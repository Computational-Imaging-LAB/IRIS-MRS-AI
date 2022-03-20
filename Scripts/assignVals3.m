function [cx,f]=assignVals3(app,metabolites,columns,varargin)

   poss=get(0,'ScreenSize');
   f=uifigure('Position',[poss(3)/4 poss(3)/4 300 300],'Color','White','DeleteFcn',@assign);
   f.Position(3);
   %%
   %Labels
   lbl=uilabel(f,'Text','Assign Standard Deviations','Position',[100 f.Position(3)-25 122 20]);
   lbl=uilabel(f,'Text','Standard Deviations','Position',[15 f.Position(3)-75 125 20]);
   lbl=uilabel(f,'Text','All Variables','Position',[160 f.Position(3)-75 125 20]);
    lbl=uilabel(f,'Text','Metabolites assigned','Position'...
        ,[10 f.Position(3)-280 300 20]);
    lbl.Visible='off';
    
    %%
    %dropDowns
   drop=uidropdown(f,'Position',[15 f.Position(3)-100 125 20],'BackgroundColor','White' ,'Items',metabolites);
   drop2=uidropdown(f,'Position',[160 f.Position(3)-100 125 20],'BackgroundColor','White' ,'Items',columns);

%%
%Buttons
    btn = uibutton(f,'push',...
               'Position',[80 f.Position(3)-200 162 20],...
               'ButtonPushedFcn', @btnPushed);
    btn.Text='Assign Standard Deviations';
    
    btn2 = uibutton(f,'push',...
               'Position',[100 f.Position(3)-225 122 20],...
               'ButtonPushedFcn', @save);
    btn2.Text='Save';
    
    asRule = uibutton(f,'push',...
               'Position',[100 f.Position(3)-250 122 20],...
               'ButtonPushedFcn', @asRuleFcn);
    asRule.Text='Define a Rule';
    
%%    
    
    global assignedList
    global reqVars;
    reqVars=zeros(1,length(drop.Items));
%%    
  % Functions
  
  
    function asRuleFcn(varargin)
        
        prompt = {'Enter the rule. (e.g +1 ,-1,+5):'};
        dlg_title = 'Assign STDs and corresponding Conc/Ratio';
        num_lines= 1;
        def     = {'0'};
        answer  = inputdlg(prompt,dlg_title,num_lines,def);
        
        ff=uifigure('Position',[100,100,600,400],'Color','White','DeleteFcn',@assign);
        
        stdList=uilistbox(ff,'Position',[50,100,150,250]);
        metList=uilistbox(ff,'Position',[200,100,150,250]);
        metDrop=uidropdown(ff,'Position',[370,215,150,30],'BackgroundColor','White' ,'Items',drop2.Items);
        change = uibutton(ff,'push',...
               'Position',[370,150,150,30],...
               'ButtonPushedFcn', @changeFcn);
        change.Text='Change';
        ok = uibutton(ff,'push',...
               'Position',[370,115,150,30],...
               'ButtonPushedFcn', @okFcn);
        ok.Text='OK';
        
        
        function okFcn(varargin)
        
        str=strjoin(metList.Items,',');
        lbl.Text=[str ' are assigned'];
        lbl.Visible="on";
        reqVars=find(ismember(drop2.Items,metList.Items)==1);
        delete(ff);
            
        end
        
        function changeFcn(varargin)
            items=metList.Items
            ind=find(ismember(metList.Items,metList.Value)==1)
            items{ind}=metDrop.Value;
            metList.Items=items;
            
        end
        
        stdList.Items=drop.Items;
        inds=find(ismember(drop2.Items,drop.Items)==1);
        inds2=str2num(string(answer))+inds;
        metList.Items={drop2.Items{inds2}};
            
    end
  
    
    
    
    
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
    app.reqVars2=reqVars;
  
    cx=reqVars;
    delete(f);
    end
    function cx=assign(varargin)
    
    cx=reqVars
    try
    app.reqVars2=reqVars
    catch
    end
    end
end