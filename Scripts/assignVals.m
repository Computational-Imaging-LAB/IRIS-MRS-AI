function [cx,f]=assignVals(app,metabolites,columns,varargin)

   poss=get(0,'ScreenSize');
   f=uifigure('Position',[poss(3)/4 poss(3)/4 300 300],'Color','White','DeleteFcn',@assign);
   f.Position(3);
   lbl=uilabel(f,'Text','Assign Metabolites','Position',[100 f.Position(3)-25 122 20]);

   lbl=uilabel(f,'Text','Required Variables','Position',[15 f.Position(3)-75 125 20]);
   lbl=uilabel(f,'Text','Excel Variables','Position',[160 f.Position(3)-75 125 20]);

   drop=uidropdown(f,'Position',[15 f.Position(3)-100 125 20],'BackgroundColor','White' ,'Items',metabolites);
   drop2=uidropdown(f,'Position',[160 f.Position(3)-100 125 20],'BackgroundColor','White' ,'Items',columns);


    btn = uibutton(f,'push',...
               'Position',[100 f.Position(3)-200 122 20],...
               'ButtonPushedFcn', @btnPushed);
    btn.Text='Assign Metabolites';
    
    btn2 = uibutton(f,'push',...
               'Position',[100 f.Position(3)-225 122 20],...
               'ButtonPushedFcn', @save);
    btn2.Text='Save';
    
    lbl=uilabel(f,'Text','Metabolites assigned','Position'...
        ,[10 f.Position(3)-280 300 20]);
    lbl.Visible='off';
    global assignedList
    global reqVars;
    reqVars=zeros(1,length(drop.Items));
    function btnPushed(varargin)
    
        
        [~,ind2]=ismember(drop2.Value,drop2.Items); 
        [~,ind]=ismember(drop.Value,drop.Items);
        reqVars(ind)=ind2;
        
        str = strjoin(drop.Items(find(reqVars>0)),', ');
        lbl.Text=['Metabolite(s) ' str '  has been assigned'];
        lbl.Visible='on';
        lbl.Tooltip=lbl.Text;

    end
    global cx;
    function save(varargin)
    app.reqVars=reqVars;
    cx=reqVars;
    delete(f);
    end
    function cx=assign(varargin)
    
    cx=reqVars
    try
    app.reqVars=reqVars
    catch
    end
    end
end