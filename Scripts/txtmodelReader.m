function [models]=txtmodelReader(version,varargin)


% This script is basically txt reader for saved models that created by
% GliomaDiagnosisTool
% Version is setted up for choosing saving and opening txt log file
% filepath is the path for saving/opening
% varargin is used for 4 things.
% 1- For filepath you can use 'path','path/to/dir'
% 2- If you want to choose path with uigetfile then you can use
% 'uiget',true (default false)
% 3- For savepath you can customize it with 'savepath'  for default it uses 'path' value. 
% 4- For append new model as a line to existing txt log use 'modelname','modelnameValue'


% Abdullah BAŞ Ph.D.
% BME
% Bogazici University 15.08.2020
models='';

property={'path','uiget','savepth','modelname'};
value={'modelsLog.txt',false,1,''};



le=length(varargin);
le=1:2:le;
%index = ismember(contains(property,varargin{le},'IgnoreCase',true))

[tf,inds]= (ismember(property,{varargin{le}}));
inds=find(inds>0);
k=1;
for i=inds
    value{i}=varargin{le(k)+1};
    k=k+1;
end

if value{3}==1
   value{3}=value{1}; 
end
filepath=value{1};

switch version
    case 'open'
        
        if value{2}
            
            [file,path] = uigetfile({'*.txt';'*.mat';'*.*'},...
                'File Selector');
            filepath=[file filesep path];
            
        end
        %%
        %File path and parameters
        txt=fopen(filepath);
        if txt==-1
            error(["File is not founded in the '"+[filepath]+"' directory"])
            return;
        end
        ch=fgetl(txt);
        i=1;
        %% While loop and reading txt line by line
        while ischar(ch)
            
            models{i}=ch;
            ch=fgetl(txt);
            i=i+1;
            
        end
        
        
        fclose(txt);
        
        %%
    case 'save'
        if value{4}==""
        
            error('Model name is not entered!')
            return;
        end
        txt=fopen(filepath,'a+')  ;  
        
        fprintf(txt,'\n%s' ,(value{4}));
        
end

