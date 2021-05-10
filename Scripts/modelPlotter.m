function modelPlotter(app,model,panel,whichPlot,color)

%% This script is for plotting model details.
% Model is the model struct which is created by GLIOMA_DIAGNOSIS TOOL 
% panel is the app component name
% whichPlot is the plot selection variable. It has 'confusionMatrix' or
% 'cm' , 'ROC','AUC','CUSTOM'
% with CUSTOM you will pop-uped to a dialog to choose the custom script.
% This function passes x,y,accuracy,specificity,sensitivity and cm
% respectively to the custom script. You should organize your script with
% taking account of this data transfer protocol.
%
% 25.08.2020
% Abdullah BAŞ
% Ph.D Boğaziçi University BME
% Kaplıca/CYPRUS
%%

switch whichPlot

    case  'cm'
        sz=size(model.plots.cm)
        
        x=1:sz(1)*sz(2)
        
        t=repmat(model.plots.cm,1,sz(1)^2);
        b=imagesc(ax,model.plots.cm)
        %b.ButtonDownFcn=@
        %text(ax,x(:), x(:),t,  'HorizontalAlignment', 'Center')

        colormap (ax,winter)
        set(ax,'XColor',color)
        set(ax,'YColor',color)

    case 'ROC'
        
        plot(ax,model.plots.X,model.plots.Ypr,model.plots.OPTROCPT(1),model.plots.OPTROCPT(2),'r*')%w,'Color',1-panel.BackgroundColor);
        set(ax,'XColor',color)
        set(ax,'YColor',color)

    case 'AUC'
        
        
        
    case 'CUSTOM'
        
        
    case 'all'
        
      
        


        ax=subplot(2,2,4,'Parent',panel)
        cla(ax);
        ax.Color=panel.BackgroundColor;
        ax.YLabel.String='True Positive Rate';
        ax.YColor=[1,1,1];
        ax.XLabel.String='False Positive Rate';
        ax.XColor=[1,1,1];
        
        ax.Title.String='\color{white}ROC Curve';
       
        
        
        
        
        model.plots.X
        model.plots.Y
        plot(ax,model.plots.X,model.plots.Y,model.plots.OPTROCPT(1),model.plots.OPTROCPT(2),'r*')%w,'Color',1-panel.BackgroundColor);
       model.plots.AUC
        text(ax,model.plots.OPTROCPT(1),model.plots.OPTROCPT(2),['AUC=' num2str(round(model.plots.AUC,3))],'Color',[0,0,0],'VerticalAlignment','bottom');
        hold(ax,'on')
        x2=[1:3];
        y2=[0  0  0];
        patch(ax,[model.plots.X' [1 0 ]],[model.plots.Y' [0 0] ],'black','FaceAlpha',0.2);
        set(ax,'XColor',color)
        set(ax,'YColor',color)
        box(ax,'off');
        set(ax,'TickLength',[0 0])

    ax.XLabel.String='False Positive Rate';
    ax.YLabel.String='True Positive Rate';




ax.ButtonDownFcn=@app.axClick;



        
end