function mrs_viewCSI( csi_info, csi_data, mri_fileName )
% MRS_VIEWCSI allows to view a spectrum from a selected voxel from MR image
% 
% mrs_viewCSI( csi_fileName, mri_fileName )
% 
% ARGS :
% csi_info = chemical shift image .SPAR information 
% csi_data = chemical shift image data to be displayed 
% mri_fileName = MR image data
% 
% PREREQUISITES:
% CSI and MPRAGE has same angulation & offcentre parameters
%
% EXAMPLE: 
% >> mrs_viewCSI('sub3_CSI_act','sub3_MRPAGE');
%
% AUTHOR : Chen Chen
% PLACE  : Sir Peter Mansfield Magnetic Resonance Centre (SPMMRC)
%
% Copyright (c) 2013, University of Nottingham. All rights reserved.
 
    [~,mri_fileName,~]=fileparts(mri_fileName);

    mri_info = mri_readPAR(mri_fileName);

    mri_side = max([mri_info.FOV(1),mri_info.FOV(3)]);
    
    if mri_side<csi_info.FOV(1) && mri_side<csi_info.FOV(2)
        mri_data = zeros(round(csi_info.FOV(1)/mri_info.vox(1)),round(csi_info.FOV(2)/mri_info.vox(2)),round(mri_info.FOV(2)/mri_info.vox(3)));

        ap_s = round((csi_info.FOV(1)-mri_side)/mri_info.vox(1)/2+1);
        ap_e = round(ap_s+mri_side/mri_info.vox(1)-1);

        rl_s = round((csi_info.FOV(2)-mri_side)/mri_info.vox(2)/2+1);
        rl_e = round(rl_s+mri_side/mri_info.vox(2)-1);

        mri_data(ap_s:ap_e, rl_s:rl_e,:)= mri_readIMG(mri_fileName);
        
    elseif mri_side<csi_info.FOV(1)
        mri_data = zeros(csi_info.FOV(1),mri_side,mri_info.FOV(2));

        ap_s = round((csi_info.FOV(1)-mri_side)/mri_info.vox(1)/2+1);
        ap_e = round(ap_s+mri_side/mri_info.vox(1)-1);

        mri_data(ap_s:ap_e, :,:)= mri_readIMG(mri_fileName);
        
    elseif mri_side<csi_info.FOV(2)
        mri_data = zeros(mri_side,csi_info.FOV(2),mri_info.FOV(2));

        rl_s = round((csi_info.FOV(2)-mri_side)/mri_info.vox(2)/2+1);
        rl_e = round(rl_s+mri_side/mri_info.vox(2)-1);

        mri_data(:, rl_s:rl_e,:)= mri_readIMG(mri_fileName);
        
    else
        ap_s = round((mri_side-csi_info.FOV(1))/mri_info.vox(1)/2+1);
        ap_e = round(ap_s+csi_info.FOV(1)/mri_info.vox(1)-1);

        rl_s = round((mri_side-csi_info.FOV(2))/mri_info.vox(2)/2+1);
        rl_e = round(rl_s+csi_info.FOV(2)/mri_info.vox(2)-1);
        
        mri_data = mri_readIMG(mri_fileName);
        mri_data = mri_data(ap_s:ap_e, rl_s:rl_e,:);
    end

    if mri_info.FOV(2) > csi_info.FOV(3)
        fh_s = round((mri_info.FOV(2)-csi_info.FOV(3))/mri_info.vox(3)/2+1);
        fh_e = round(fh_s+csi_info.FOV(3)/mri_info.vox(3)-1);
        
%         disp(length(fh_s:fh_e));
%         figure(3)
%         for i=fh_s:fh_e
%             imagesc(mri_data(:,:,i));
%             colormap(gray);
%             input('Entre')
%         end

        mri_data = mean(mri_data(:,:,fh_s:fh_e),3);
    else
        mri_data= mean(mri_data,3);
    end

    x = round(size(mri_data,1)/2-csi_info.FOV(1)/mri_info.vox(1)/2+linspace(0, double(csi_info.FOV(1)/mri_info.vox(1)), csi_info.dim(1)+1));
    y = round(size(mri_data,2)/2-csi_info.FOV(2)/mri_info.vox(2)/2+linspace(0, double(csi_info.FOV(2)/mri_info.vox(1)), csi_info.dim(2)+1));
    z = ones(length(x),length(y));
    
    f=figure(1);
    imagesc(rot90(mri_data));
    colormap(gray);
    hold on
    h=mesh(x,y,z,'FaceColor','none','EdgeColor','green');

    location=get(f,'Position');
    location=[location(1)+location(3), location(2:4)];

    edges=(double([size(mri_data,1) size(mri_data,2)])./[csi_info.dim(1) csi_info.dim(2)]);    
    
    csi_data = mrs_rot90(csi_data);
    
    set(h,'ButtonDownFcn',{@plotSpectrum,edges, csi_info, csi_data, location});
end

function plotSpectrum(~, ~, edges, csi_info, csi_data, location)
    point = get(gca, 'CurrentPoint');
    x = ceil(point(1,1)/edges(1));
    y = ceil(point (1,2)/edges(2));

    gridedge_color='magenta';
    if ~isempty(findobj('FaceColor','none','EdgeColor',gridedge_color))
        set(findobj('FaceColor','none','EdgeColor',gridedge_color),'Visible','off');
    end
    mesh(edges(1)*[x-1 x],edges(2)*[y-1 y],ones(2,2),'FaceColor','none','EdgeColor',gridedge_color);

    g=figure(2);
    set(g,'Position',location);

    xp = 1:csi_info.samples;
    xppm = mrs_points2ppm( xp, csi_info.samples, csi_info.BW, csi_info.transmit_frequency)+4.7;

    plot(xppm,real(csi_data(:,x,y)),'r');
    set(gca,'xdir','reverse')
    title(['Spectrum at x=',num2str(x),', y=',num2str(y)]);
end