

%Creates model plots for trained models

% ax is the axis that you want to plot. Default is 'gca'.
% ygt is the ground truth.
% ypr is the predicted.
% 
% 17.08.2020
% Abdullah BAŞ
% Ph.D BME Bogazici University
% Turkish Republic Of Northern Cyprus



function confusionMatPlotSideVal1(ax,ygt,ypr,varargin)
f=ax;
cla(ax);
class=length(unique(ygt));
boxes=7*class;

TextColor=[0 0 0]
RectColor=[1 1 1]
properties={'Sensitivity','FNR','FPR','Specificity','Prevalance','PPV','FOR'};

for i=0:class-1
   TP=sum((ygt==i).*(ypr==i))
   FN=sum((ygt==i).*~(ypr==i)) 
   FP=sum(~(ygt==i).*(ypr==i))
   TN=sum(~(ygt==i).*~(ypr==i))
   cmVals{i+1}=[TP FN FP TN]
   
   Sens=(TP)/(TP+FN);
   FNR= (FN)/(TP+FN);
   FPR= (FP)/(FP+TN);
   Specifity=(TN)/(FP+TN);
   Prevalance=(TP+FN)/(sum(cmVals{i+1}));
   PPV=(TP)/(TP+FP);
   FOR=(FN)/(FN+TN);
   
   variableVals{i+1}=[Sens FNR FPR Specifity Prevalance PPV FOR]

end



for i=0:class
    if i~=0
    valss=variableVals{i};
    end
    for j=0:7
        
        rectangle(f,'Position',[i/boxes j/boxes 1/boxes 1/boxes ],'FaceColor',RectColor)
        if (j==0)-(i==0 & j==0)
             ind= max(i,j);
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,['Class ' num2str(ind-1)],'HorizontalAlignment','Center','Color',TextColor)
        elseif (i==0)-(i==0 & j==0)
            
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,[properties{j}],'HorizontalAlignment','Center','Color',TextColor)
        elseif i==0 & j==0
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,'All 100%','HorizontalAlignment','Center','Color',TextColor)
        else
            
            percent=round(valss(j),4)*100;
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,['   ' num2str(percent) '%'],'HorizontalAlignment','Center','Color',TextColor)
        end
    end
    
end
set(f, 'YDir','reverse')
ax=f;
ax.Title.String="Classes";
ax.Title.Color=[0,0,0];
ax.Title.ButtonDownFcn=@txtHandler;
ax.YLabel.String="Metrics";
ax.YLabel.Color=[0,0,0];
pos=get(ax.YLabel,'Position');
t=text(f,pos(1),pos(2),'Metrics','Rotation',90,'Color',[0,0,0]);


axis(ax,'off')












end