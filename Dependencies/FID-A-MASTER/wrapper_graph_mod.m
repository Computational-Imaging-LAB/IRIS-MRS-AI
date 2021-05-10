% One to RULE ALL
clc;clear;
cd('C:\Users\USER01\Desktop\Ayhan\AcibademMRS\ACIBADEM_June12_2017_Full_With_CSVandCOORD')
legendtext{1}=('In vivo');
%legendtext{2}=('Base line'); % Baseline removed
legendtext{2}=('Fit');
figurelist={'30199516','13607149','30175908','30176349','30197577','90068941'};
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
figure('Name',PID,'NumberTitle','off','units','centimeters','outerposition',[0 0 50 30]);title(strcat('Patient ',PID,' spectra')); hold on;
pt_axis=0;
plot(ppm, sp.specs','LineWidth',2);
pt_axis=pt_axis-50;
% plot(ppm,(bg.specs+pt_axis),'LineWidth',2); %!!!!  %Baseline plot-> Removed
% pt_axis=pt_axis-300;
plot(ppm,(fit.specs+pt_axis),'LineWidth',2);
pt_axis=pt_axis-100;

% Read all metabolites (This part is modified for plot only Glu,Gln,Glyc,2HG,Ins,Lac)
modplot=[13 5 7 8 9 14 15];
for n=modplot
    [out]=io_readlcmcoord(coord_filename,metabs{n});
    if n<20|n>34
        if ~isempty(out.specs)
            spectra_all(ind,:)=out.specs;
            legendtext{ind+2}=strcat(strjoin(tabledata.name(n)),'-','SD:%',num2str(tabledata.SDpct(n)));
            a=spectra_all(ind,:)-bg.specs';
            if n==13
            plot(ppm, (a+pt_axis)','r','LineWidth',2);
            else
            plot(ppm, (a+pt_axis)','LineWidth',2);    
            end
            pt_axis=pt_axis-250; 
            ind=ind+1; 
        end
    elseif n<29
            if ~isempty(out.specs)
                spectra_all(ind,:)=out.specs;
                legendtext{ind+2}=strcat(strjoin(tabledata.name(n+6)),'-','SD:%',num2str(tabledata.SDpct(n+6)));
                a=spectra_all(ind,:)-bg.specs';
                plot(ppm, (a+pt_axis)','LineWidth',2);
                pt_axis=pt_axis-250; 
                ind=ind+1; 
            end
     elseif n<35
            if ~isempty(out.specs)
                spectra_all(ind,:)=out.specs;
                legendtext{ind+2}=strcat(strjoin(tabledata.name(n-9)),'-','SD:%',num2str(tabledata.SDpct(n-9)));
                a=spectra_all(ind,:)-bg.specs';
                plot(ppm, (a+pt_axis)','LineWidth',2);
                pt_axis=pt_axis-250; 
                ind=ind+1; 
            end  
    end
end

legend(legendtext,'Location','eastoutside');
axis([min(ppm)  max(ppm)    ylim]);
set(gca,'XDir','reverse');
xlabel('ppm');
set(gca,'YTickLabel',{' '})
set(gcf,'PaperPositionMode','auto');
indm(m)=ind;
box off;
cd('C:\Users\USER01\Desktop\Ayhan\AcibademMRS\figures\article');
print(PID,'-dtiff', '-r300');
end