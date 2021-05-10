function [metabs,corrMatrix]=wrapperf(coord,print)

coord_filename=coord;
output_filename=print;

% Read metabolite details and correlation coefficients table
[metabs,corrMatrix]=io_loadlcmdetail(output_filename);

[bg]=io_readlcmcoord_getBackground(coord_filename,'bg');
ppm=bg.ppm;
ind=1;

[fit]=io_readlcmcoord_getBackground(coord_filename,'fit');
fit.specs=fit.specs-bg.specs;
[sp]=io_readlcmcoord_getBackground(coord_filename,'sp');

% Read all metabolites
for n=1:length(metabs)
    [out]=io_readlcmcoord(coord_filename,metabs{n});
    
    if ~isempty(out.specs)
        spectra_all(ind,:)=out.specs;
        ind=ind+1;
    else
    end
end
fclose('all');
close('all');
end
