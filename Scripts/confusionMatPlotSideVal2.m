function confusionMatPlotSideVal2(ax,ygt,ypr,varargin)
f=ax;
class=length(unique(ygt));
boxes=7*class;
cla(ax);
TextColor=[0 0 0]
RectColor=[1 1 1]
properties={'LR+','LR-','Accuracy','FDR','NPV','DOR','F1 Score'};

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
   
   LR=((TP)/(TP+FN))/((FP)/(FP+TN));
   LR_=((FN)/(TP+FN))/((TN)/(FP+TN));
   Accuracy=(TP+TN)/((sum(cmVals{i+1})));
   FDR=(FP)/(FP+TP);
   NPV=(TN)/(FN+TN);
   DOR=(LR)/(LR_);
   F1Score=2*((PPV*Sens)/(PPV+Sens));
   variableVals{i+1}=[LR,LR_,Accuracy,FDR,NPV,DOR,F1Score];

end



for i=0:class
    if i~=0
    valss=variableVals{i};
    end
    for j=0:7
        
        rectangle(f,'Position',[i/boxes j/boxes 1/boxes 1/boxes ],'FaceColor',RectColor)
        if (j==0)-(i==0 & j==0)
             ind= max(i,j);
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,['Class ' num2str(ind-1)],'HorizontalAlignment','Center','Color',[0 0 0 ],'LineWidth',2)
        elseif (i==0)-(i==0 & j==0)
            
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,[properties{j}],'HorizontalAlignment','Center','Color',[0 0 0 ],'LineWidth',2)
        elseif i==0 & j==0
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,'All 100%','HorizontalAlignment','Center','Color',[0 0 0 ],'LineWidth',2)
        else
            
            percent=round(valss(j),4)*100;
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,['   ' num2str(percent) '%'],'HorizontalAlignment','Center','Color',[0 0 0 ],'LineWidth',2)
        end
    end
    
end
set(f, 'YDir','reverse')

ax=f;
ax.Title.String="Classes";
ax.Title.Color=[0 0 0];
ax.Title.ButtonDownFcn=@txtHandler;
ax.YLabel.String="Metrics";
ax.YLabel.Color=[0 0 0 ];
pos=get(ax.YLabel,'Position');
t=text(f,pos(1),pos(2),'Metrics','Rotation',90,'Color',[0 0 0 ],'LineWidth',3);

axis(f,'off')












end