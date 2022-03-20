% One to RULE ALL
clc;clear;
cd('D:\Ayhan\AcibademMRS\ACIBADEM_June12_2017_Full_With_CSVandCOORD')
legendtext{1}=('Spectra output');
legendtext{2}=('Baseline');
legendtext{3}=('Output w/o baseline');
figurelist={'30199516','13607149' ,'30155025','30160118','30175908','30176349','30197577','90068941'};
for m=1:numel(figurelist)
PID=char(figurelist(m));
coord_filename=strcat(PID,'.coord');
output_filename=strcat(PID,'.print');

% Read metabolite details and correlation coefficients table
[metabs,corrMatrix]=io_loadlcmdetail(output_filename);

[bg]=io_readlcmcoord_getBackground(coord_filename,'bg');
ppm=bg.ppm;
ind=1;

[fit]=io_readlcmcoord_getBackground(coord_filename,'fit');
fit.specs=fit.specs-bg.specs;
[sp]=io_readlcmcoord_getBackground(coord_filename,'sp');

tabledata=mrs_readLcmodelTABLE(strcat(PID,'.table'));
%%
% Create a line plot of all metabolites minus the background
%figx=figure('units','centimeters','outerposition',[0 0 50 30]);
figure('Name',strcat(PID,'mod1'),'NumberTitle','off','units','centimeters','outerposition',[0 0 50 30]);title(strcat('Patient ',PID,' spectra')); hold on;
pt_axis=0;
plot(ppm, sp.specs','LineWidth',2);
plot(ppm,(bg.specs+pt_axis),'LineWidth',2); %!!!!
pt_axis=pt_axis-200;
plot([ppm; ppm], [(fit.specs+pt_axis);  ones(1,size(fit.specs,1))'.*pt_axis],'LineWidth',2);
pt_axis=pt_axis-200;

% Read all metabolites (This part is modified for plot only GABA,Glu,Gln,Glyc,2HG,Ins,Lac)
modplot=[5 7 8 9 13 14 15];
for n=modplot
    [out]=io_readlcmcoord(coord_filename,metabs{n}); %Graph of the specific metabolite is taken from coordfile(Ex: Only Glu graph from coord file)
    if n<20|n>34
        if ~isempty(out.specs)
            spectra_all(ind,:)=out.specs;
            legendtext{ind+3}=strcat(strjoin(tabledata.name(n)),'-','SD:%',num2str(tabledata.SDpct(n)));
            a=spectra_all(ind,:)-bg.specs';
            if n==13
                plot([ppm; ppm], [(a+pt_axis)';  ones(1,size(a,2))'.*pt_axis],'LineWidth',2);
            else
                plot([ppm; ppm], [(a+pt_axis)';  ones(1,size(a,2))'.*pt_axis],'LineWidth',2);
            end
            pt_axis=pt_axis-200; 
            ind=ind+1; 
        end
    elseif n<29
            if ~isempty(out.specs)
                spectra_all(ind,:)=out.specs;
                legendtext{ind+3}=strcat(strjoin(tabledata.name(n+6)),'-','SD:%',num2str(tabledata.SDpct(n+6)));
                plot([ppm; ppm], [(a+pt_axis)';  ones(1,size(a,2))'.*pt_axis],'LineWidth',2);
                a=spectra_all(ind,:)-bg.specs';
                pt_axis=pt_axis-200; 
                ind=ind+1; 
            end
     elseif n<35
            if ~isempty(out.specs)
                spectra_all(ind,:)=out.specs;
                legendtext{ind+3}=strcat(strjoin(tabledata.name(n-9)),'-','SD:%',num2str(tabledata.SDpct(n-9)));
                a=spectra_all(ind,:)-bg.specs';
                plot([ppm; ppm], [(a+pt_axis)';  ones(1,size(a,2))'.*pt_axis],'LineWidth',2);
                pt_axis=pt_axis-200; 
                ind=ind+1; 
            end  
    end
end

% Create an image of correlation coefficients matrix
% figure;title(strcat('Patient',PID,' correlation matrix')); imagesc(corrMatrix); colorbar;
% fprintf('Correlated metabolite fits \n');
% [indx, indy]=find(corrMatrix < -0.5);
% for corind=1:length(indx)
% fprintf('%s & %s \n', metabs{indx(corind)}, metabs{indy(corind)});
% end

legend(legendtext,'Location','eastoutside');
axis([min(ppm)  max(ppm)    ylim]);
set(gca,'XDir','reverse');
xlabel('ppm');
set(gca,'YTickLabel',{' '})
set(gcf,'PaperPositionMode','auto');
indm(m)=ind;
box off;
% cd('D:\Ayhan\AcibademMRS\figures\article');
%print(PID,'-dtiff', '-r300');
end