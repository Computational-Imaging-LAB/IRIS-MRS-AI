function [cx,f]=assignVals2(app,metabolites,columns,varargin)

   poss=get(0,'ScreenSize');
   f=uifigure('Position',[poss(3)/4 poss(3)/4 300 300],'Color','White','DeleteFcn',@assign);
   f.Position(3);
   lbl=uilabel(f,'Text','Assign Metabolites','Position',[100 f.Position(3)-25 122 20]);

   lbl=uilabel(f,'Text','Required Variables','Position',[15 f.Position(3)-75 125 20]);
   lbl=uilabel(f,'Text','Excel Variables','Position',[195 f.Position(3)-75 125 20]);
   lbl=uilabel(f,'Text','','Position',[100 f.Position(3)-75 125 20]);
    
   drop=uidropdown(f,'Position',[15 f.Position(3)-100 80 20],'BackgroundColor','White' ,'Items',metabolites);
   drop2=uidropdown(f,'Position',[100 f.Position(3)-100 80 20],'BackgroundColor','White' ,'Items',columns);
   drop3=uidropdown(f,'Position',[195 f.Position(3)-100 80 20],'BackgroundColor','White' ,'Items',columns);


    btn = uibutton(f,'push',...
               'Position',[85 f.Position(3)-200 152 20],...
               'ButtonPushedFcn', @btnPushed);
    btn.Text='Assign Standard Deviations';
    
    btn2 = uibutton(f,'push',...
               'Position',[100 f.Position(3)-225 122 20],...
               'ButtonPushedFcn', @save);
    btn2.Text='Save';
    
    lbl=uilabel(f,'Text','Metabolites assigned','Position'...
        ,[10 f.Position(3)-280 300 20]);
    lbl.Visible='off';
    global assignedList
    global reqVars;
    global reqVars2
    reqVars=zeros(1,length(drop.Items));
    reqVars2=zeros(1,length(drop.Items));

    function btnPushed(varargin)
    
        
        [~,ind2]=ismember(drop2.Value,drop2.Items); 
        [~,ind]=ismember(drop.Value,drop.Items);
        [~,ind3]=ismember(drop3.Value,drop3.Items);

        reqVars(ind)=ind3
        reqVars2(ind)=ind2

        str = strjoin(drop.Items(find(reqVars>0)),', ');
        lbl.Text=['Metabolite(s) ' str '  has been assigned'];
        lbl.Visible='on';
        lbl.Tooltip=lbl.Text;

    end
    global cx;
    function save(varargin)
    
    cx=reqVars;
    delete(f);
    end
    function cx=assign(varargin)
    
    cx=reqVars
    try
    app.reqVars=reqVars
    app.reqVars2=reqVars2;
    catch
    end
    end
    %app.reqVars=reqVars;
end