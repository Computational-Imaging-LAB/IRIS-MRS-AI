function confusionMatPlot(ax,ygt,ypr,varargin)
f=ax
class=length(unique(ygt));
boxes=class*class+class*2+1
cla(ax);

TextColor=[0 0 0]
RectColor=[1 1 1]



for i=0:class
    for j=0:class
        
        rectangle(f,'Position',[i/boxes j/boxes 1/boxes 1/boxes ],'FaceColor',RectColor)
        if (i==0 | j==0)-(i==0 & j==0)
             ind= max(i,j);
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,['Class ' num2str(ind-1)],'HorizontalAlignment','Center','Color',TextColor)

        elseif i==0 & j==0
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,'All 100%','HorizontalAlignment','Center','Color',TextColor)
        else
            val=sum((ygt==i-1).*(ypr==j-1))
            percent=round(val/length(ygt),4)*100;
            text(f,(i+0.5)/boxes,(j+0.5)/boxes,[num2str(val) '   ' num2str(percent) '%'],'HorizontalAlignment','Center','Color',TextColor)
        end
    end
    
end
set(f, 'YDir','reverse');
ax=f;
ax.Title.String="Ground Truth";
ax.Title.Color=[0 0 0];
ax.Title.ButtonDownFcn=@txtHandler;
ax.YLabel.String="Predicted";
ax.YLabel.Color=[ 0 0 0];
pos=get(ax.YLabel,'Position');
t=text(f,pos(1),pos(2),'Prediction','Rotation',90,'Color',[0 0 0]);



axis(ax,'off')











end