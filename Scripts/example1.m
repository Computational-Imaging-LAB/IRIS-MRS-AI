function example1(varargin)
% Create the figure and define the "MouseMove" Callback
% Define where to place your UIPANEL


varargin{1}.Position;
ff=uifigure('Position',[varargin{1}.Position(1:2) 900 665]);
global ax;
global b;

ax=varargin{1};
pos=[10 550 150 50];
posInc=[0 50 0 0];
background=uibutton(ff,'push');
background.Position=pos+posInc;
background.ButtonPushedFcn=@backPushed;
background.Text='Change Background Color';


nFig=uibutton(ff,'push');
nFig.Position=pos;
nFig.ButtonPushedFcn=@newFigLine;
nFig.Text='Show Line on New Figure';


panel=uipanel(ff);
panel.Position=[200 50 650 600];
panel.BackgroundColor=[0.4 0.4 0.4];
%%
line=uibutton(ff,'push');
line.Position=pos-posInc-[0 0 55 0];
line.ButtonPushedFcn=@LineColorSet;
line.Text='Set Line/Text Color';



global lines;
global ax2;
global xx2;
global xx2Color;
ax2=linePushed;

lines=findobj(ax2, 'type', 'line');

texts=findobj(ax2, 'type', 'text');

txts={};
for i=1:length(texts)
    try
        txts{end+1}=texts(i).String{end};
    catch
        txts{end+1}=texts(i).String;
    end
end


lineDropDown=uidropdown(ff,'Items',...
    txts,'Position',pos-posInc+[100 0 -75 0],...
    'ValueChangedFcn',@lineselection,'BackgroundColor',[1,1,1]);










%%
export=uibutton(ff,'push');
export.Position=pos-posInc*6;
export.ButtonPushedFcn=@exportPushed;
export.Text='Export Graphics';

ChangeFont=uibutton(ff,'push');
ChangeFont.Position=pos-posInc*5;
ChangeFont.ButtonPushedFcn=@ChangeFontPushed;
ChangeFont.Text='Font Options';

xcol=uilabel(ff,'Text','X Axis Color','Position',pos-posInc*3)

xcoled=uieditfield(ff,'Text','Position',pos-posInc*3-[-70 -10 45 20],'Value'...
    ,num2str(ax2.XColor),'FontColor',[0 0 0],'ValueChangedFcn',@colorChange);


ycol=uilabel(ff,'Text','Y Axis Color','Position',pos-posInc*4)

ycoled=uieditfield(ff,'Text','Position',pos-posInc*4-[-70 -10 45 20],'Value'...
    ,num2str(ax2.YColor),'FontColor',[0 0 0],'ValueChangedFcn',@colorChange);
checkAll=uicheckbox(ff,'Text','Change All Lines Color','Position',pos-[0 0 25 10]-posInc*1.75);
checkAllTexts=uicheckbox(ff,'Text','Change All Texts Color','Position',pos-[0 0 25 10]-posInc*2.25);
panel.AutoResizeChildren="off";
xx2=[];
    function newFigLine(varargin)
        fc= figure;    
        fx=subplot(1,1,1,'Parent',fc);
        xlim(fx,get(ax2,'xlim'));
        xa=copyobj(lines(xx2),fx);
        xt=copyobj(texts(xx2),fx);
        try
        xa.YData=lines(xx2).YData-min(lines(xx2).YData);
        xt.Position(2)=xt.Position(2)-min(lines(xx2).YData);
        fx.XTick=(ax2.XTick);
        fx.XTickLabel=(ax2.XTickLabel);
        ylim(fx,[min((xa.YData))-(max(xa.YData)*0.1),max((xa.YData))*1.10])
        catch
            
            
        end
        
        
        
        
        
    end
    function ChangeFontPushed(varargin)
    
        
        
        exportFig=uifigure('Position',[400 400 300 220]);
        
        lbl = uilabel(exportFig);
        lbl.Text = 'Font Size-(must be numeric )';
        lbl.Position = [20 177 300 50];
        
        lbl2 = uilabel(exportFig);
        lbl2.Text = 'Font Type';
        lbl2.Position = [20 125 300 50];
        
        lbl2 = uilabel(exportFig);
        lbl2.Text = 'Font Interpreter';
        lbl2.Position = [20 57 300 50];
        
        
        dropDown=uidropdown(exportFig,'Items',...
            listfonts,'Value',get(ax2.XLabel,'FontName'),'Position',[20 115 270 25],...
            'BackgroundColor',[1,1,1]);
        
        dropDown2=uidropdown(exportFig,'Items',...
            {'TeX','LaTeX','none'},'Value','TeX',...
            'Position',[20 50 270 25],...
            'BackgroundColor',[1,1,1]);
        
        
        export2=uibutton(exportFig,'push');
        export2.Position=[125 15 50 20];
        export2.ButtonPushedFcn=@changeFont;
        export2.Text='Change Fonts';
        txtBox=uieditfield(exportFig,'numeric','Position',[20 170 190 25]...
            ,'Value',get(ax2.XLabel,'FontSize'),'FontColor',[0.66 0.66 0.66]);
      
        function changeFont(varargin)
        txt_obj = findall(ax2,'Type','text')
        set(txt_obj,'FontName',dropDown.Value,'FontSize',txtBox.Value,'Interpreter',dropDown2.Value);
        end
    
    end
    function colorChange(varargin)
        
        try
            ax2.XColor=(xcoled.Value)
            
        catch
            
            msgbox('Please insert proper RGB Triplet to X Axis Color')
        end
        
        try
            ax2.YColor=(ycoled.Value)
            
        catch
            
            msgbox('Please insert proper RGB Triplet to Y Axis Color')
        end
        
        
        
    end
    function lineselection(varargin)
        if ~isempty(xx2) & ~isempty(xx2Color)
            xx2Color
            xx2
            lines(xx2).Color=(xx2Color);
            lines(xx2).LineWidth=lines(xx2).LineWidth-1;
            texts(xx2).Color=(xx2Color);
            
        end
        
        
        [~,xx2]=(ismember((varargin{1}.Value),varargin{1}.Items)) ;
        xx2Color=lines(xx2).Color;
        lines(xx2).Color=[0 0 1]    ;
        texts(xx2).Color=[0 0 1]    ;
        
        lines(xx2).LineWidth=lines(xx2).LineWidth+1;
    end
    function LineColorSet(varargin)
        c=uisetcolor()
        
        
        if checkAll.Value
            for i=1:length(lines)
                
                lines(i).Color=c;
                
            end
        end
        if checkAllTexts.Value
            for i=1:length(lines)
                
                texts(i).Color=c;
                
            end
        end
        
        if  ~(checkAllTexts.Value |  checkAll.Value)
            lines(xx2).Color=c;
            texts(xx2).Color=c;
            
            xx2Color=c;
        end
    end
    function exportPushed(varargin)
        
        
        
        
        exportFig=uifigure('Position',[400 400 300 220]);
        
        lbl = uilabel(exportFig);
        lbl.Text = 'Filename-(pdf,png,jpg,jpeg is supported)';
        lbl.Position = [20 177 270 50];
        
        dropDown1=uidropdown(exportFig,'Items',...
            {'.pdf','.png','.jpeg','.jpg','.tif','.tiff','.emf','.eps'},'Position',[213 170 80 25],...
            'BackgroundColor',[1,1,1]);
        
        
        txtBox=uieditfield(exportFig,'Text','Position',[20 170 190 25],'Value'...
            ,'example','FontColor',[0.66 0.66 0.66],'ValueChangingFcn',@colorBlack);
        function colorBlack(varargin)
            varargin{:}
            varargin{1}.FontColor=[0 0 0];
            
        end
        
        function exportPushed2(varargin)
            ax2=get(panel,'Children');
            
            xx=[char(txtBox.Value),char(dropDown1.Value)]
            if ~isempty(xx)
                f=waitbar(0.2,"Exporting");
                exportgraphics(panel,xx,'ContentType','Vector','BackgroundColor',ax2.Color, 'Resolution',str2num(dropDown.Value));
                waitbar(1,f,"Finished!");
                close(f);
            end
            
            
        end
        
        export2=uibutton(exportFig,'push');
        export2.Position=[125 65 50 20];
        export2.ButtonPushedFcn=@exportPushed2;
        export2.Text='Save';
        
        
        lbl2 = uilabel(exportFig);
        lbl2.Text = 'DPI Values';
        lbl2.Position = [20 115 270 50];
        
        dropDown=uidropdown(exportFig,'Items',...
            {'150','300','600','900'},'Position',[20 105 270 25],...
            'BackgroundColor',[1,1,1]);
        
        
        
        
        
        
        
        
        
        
    end
    function ax2=linePushed(varargin)
        %set(ax,'Parent',panel)
        
        delete(findobj(panel, 'type', 'axes'));
        
        ax2=copyobj(ax,panel,'legacy');
        ax2.Position=[0.15 0.15 0.8 0.8 ];
        panel.BackgroundColor=ax.Color;
        set(ax2,'ycolor',ax.Color);
        ax2.Title.ButtonDownFcn=@textHandler;
        ax2.XLabel.ButtonDownFcn=@textHandler;
        ax2.YLabel.ButtonDownFcn=@textHandler;
    end
    function backPushed(varargin)
        c = uisetcolor([1 1 0],'Select a color');
        %ax.Color=c;
        
        panel.BackgroundColor=c;
        ax2=get(panel,'Children');
        ax2.Color=c;
        set(ax2,'ycolor',ax2.Color);
    end



end


