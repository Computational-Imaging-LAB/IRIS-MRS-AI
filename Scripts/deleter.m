function deleter(txt,model)

fid = fopen(txt,'rt') ;
S = textscan(fid,'%s','delimiter','\n') ;
S = S{1} ;
fclose(fid) ;
% Get the indices of REV and remove them 
idx = strcmp(S,model) ;
S(idx) = [] ;
% Get the indices of ! and remove them 

% write to file 
fid = fopen('modelsLog.txt','wt') ;
fprintf(fid,'%s\n',S{:});
fclose(fid) ;
end