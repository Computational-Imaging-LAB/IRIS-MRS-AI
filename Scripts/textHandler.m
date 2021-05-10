% This function is for handling changes -position and string- of text
% objects.
% With this function users can manipulate strings.
% 13.09.2020
% varargin{1}: axis that has been clicked.
% varargin {2}: Click type (1-2).
% Abdullah BAŞ
% BME Bogazici University
% Turkey
% TRNC.

function textHandler(varargin)





global ax;
global y;
global b;

ax=get(varargin{1},'Parent')
y=0;
if varargin{2}.Button==1
    
    if b==1
        b=0;
        return;
    end
    
    
    
    
    prompt = {'Please insert the new text','Enter Font Color as RGB Triplet - :'};
    dlgtitle = 'Input';
    dims = [1 35];
    definput = {varargin{1}.String,num2str(varargin{1}.Color)};
    answer = inputdlg(prompt,dlgtitle,dims,definput)
    %varargin{1}.BackgroundColor=[0 0 1]
    
    varargin{2}.Button
    if ~isempty(answer)
        varargin{1}.String=(answer{1});
        varargin{1}.Color=str2num(answer{2});
        
    end
    
    
elseif varargin{2}.Button==3
    
    y=1;
    b=1;
    x=1;
    varargin{1}.BackgroundColor
    if string(varargin{1}.BackgroundColor)=='none'
        varargin{1}.BackgroundColor=[0 0 1];
        
    else
        varargin{1}.BackgroundColor='none'
        y=0;
        return;
    end
    
    while y
        C=mouseMove(ax);
        varargin{2}.Source.Position=[C(1,1),C(1,2)] ;
        %title(ax, ['\color{white}(X,Y) = (', num2str(C(1,1)), ', ',num2str(C(1,2)), ')']);
        drawnow();
        x=x+1;
    end
    
end




    function C=mouseMove (varargin)
        C = get (varargin{1}, 'CurrentPoint');
    end




end
