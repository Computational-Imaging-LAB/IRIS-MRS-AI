% MODEL PLOT
% In this script users can plot skeleton of model plotting
% ax (Axis): is the axis that you want to plot
% res (cell) : is the value of models
% Labels : is the text value
% Author Abdullah BAŞ
% Boğaziçi BME CIL
% Cyprus/ Dhavlos 14.06.2020
% 




function modelResPlot(ax,res,Labels)

cla(ax);
f=ax;

if nargin<3

    Labels=1:length(res{1})
    
end
boxes=length(res)*length(res{1})
for i=0:length(res)
  if  i~=0
     resc=res{i}; 
  end
  iter=1;

    for j=1:2:length(res{1})*2
        
        rect=rectangle(f,'Position',[i/boxes j/boxes 1/boxes 1/boxes ],'FaceColor',[0.5 0.5 0.5]);
        if (i==0 | j==0)-(i==0 & j==0)
            ind= max(i,j);
            rect.FaceColor=[0,0,1];
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,[' ' (Labels{iter}) ],'HorizontalAlignment','Center','Color',[1,1,1],'Rotation',90)
            iter=iter+1;
        else
            
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,[ num2str(resc(iter))],'HorizontalAlignment','Center','Color',[1,1,1])
            iter=iter+1;
        end
    end
    
end
%camroll(ax,90)
axis(ax,'off')
set(ax,'OuterPosition',[0 0 1 1 ])
end