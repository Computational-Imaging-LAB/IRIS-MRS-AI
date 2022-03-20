function [data2,f,data,crlb]=crlbThe(app,data)
crlb=-1;
VThe=50;
LThe=.5;
data2=data;
f=uifigure('Position',[200 200 1050 500],'Color',[1 1 1]);
btnReset = uibutton(f,'push',...
    'Text', 'Reset Table',...
    'Position',[40,400,150,30],'FontWeight','Bold');
edtL = uieditfield(f,'numeric',...
    'Limits', [0 100],...
    'LowerLimitInclusive','off',...
    'UpperLimitInclusive','on',...
    'Value', 30,'Position',[180 240 100 25]);
edtV = uieditfield(f,'numeric',...
    'Limits', [0 Inf],...
    'LowerLimitInclusive','off',...
    'UpperLimitInclusive','on',...
    'Value', 30,'Position',[180 300 100 25]);

VThe=(edtV.Value);
LThe=(edtL.Value)/100;
lbl=uilabel(f,'Text',"CRLB Threshold",'Position',[180,335,100,15]);
lbl=uilabel(f,'Text',"Column Percent",'Position',[180,275,100,15]);

tab=uitable(f,'Position',[300 50 750 400]);
btn = uibutton(f,'push',...
    'Text', 'Assign STD Columns',...
    'Position',[40,150,150,30],'FontWeight','Bold');
btnFilt = uibutton(f,'push',...
    'Text', 'Imputer',...
    'Position',[40,100,150,40],"BackgroundColor",[0.00,0.45,0.74],"FontColor","white",'FontWeight','Bold');
btnFiltConf = uibutton(f,'push',...
    'Text', 'Confirm Table',...
    'Position',[40,10,150,40],"BackgroundColor",[0.47,0.67,0.19],"FontColor","white",'FontWeight','Bold');
btnRow = uibutton(f,'push',...
    'Text', 'Apply Row Threshold %30',...
    'Position',[30,55,170,40],"BackgroundColor",[0.47,0.67,0.19],"FontColor","white",'FontWeight','Bold');


btnFilt.ButtonPushedFcn=@fltOut;
btnFiltConf.ButtonPushedFcn=@confirm;
btn.ButtonPushedFcn=@ata;
btnReset.ButtonPushedFcn=@reset;
btnRow.ButtonPushedFcn=@rowFcn;

list=uilistbox(f,'Position',[20,190,160,170]);
list.Multiselect="on";
tab.Data=data;
global row;
global col;
global ind;
global r;
global c;
global rows;
global c2;

list.Items=tab.Data.Properties.VariableNames;
    function rowFcn(varargin)
        d = uiprogressdlg(f,'Message','Processing',...
                'Title','CRLB Menu');
            d.Value=0.5             
        s = uistyle("BackgroundColor",'black',"FontColor",'white');
        [~,ind]=(ismember(list.Value,list.Items))
        d.Value=0.75;
        datam=table2array(tab.Data(:,col))
        datam=datam>(edtV.Value)
        rows=sum(datam,2)<=size(datam,2)*0.3
        rows2=sum(datam,2)>size(datam,2)*0.3
        addStyle(tab,s,'row',find(rows2==1))
        d.Value=1;
        delete(d);
    end


    function reset(varargin)
        removeStyle(tab)
        tab.Data=data;
        list.Items=data.Properties.VariableNames;
    end



    function confirm(varargin)
                s = uistyle("BackgroundColor",'green',"FontColor",'black');
disp('adasd')
rows
        data2=tab.Data(find(rows==1),:);
        election = uiconfirm(f,"Would you like to export resulted table?","Save",...
            'Options',{'Yes','No'},...
            'DefaultOption',1,'CancelOption',2);
        switch election
            case 'Yes'
  [file,path]=uiputfile({'*.txt';'*.xlsx'})
  writetable(data2(:,unique(c2)),[path,file]);
                
            case 'No'
        end
        unique(c2)
        app.UITable2.Data=data2;
        removeStyle(app.UITable2);

        app.PREDICTORSListBox.Value={app.PREDICTORSListBox.Items{unique(c2)}};
                        addStyle(app.UITable2,s,'column',unique(c2));

        app.crlb=VThe;
        delete(f);
    end
    function fltOut(varargin)
        
        selection = uiconfirm(f,"Improper Concentration Fill","Select the fill method",...
            'Options',{'Zero Fill','Mean Imputer','Median Imputer',...
            },...
            'DefaultOption',1,'CancelOption',2);
                    dat=tab.Data;
d = uiprogressdlg(f,'Message','This process will take few minutes',...
                'Title','CRLB Menu');
            d.Value=0.5 
        switch selection
            case 'Zero Fill'
                    
                for i=(unique(c))'
                    dat2= dat.(dat.Properties.VariableNames{i});
                    dat2(r(c==i))=0;
                    dat.(dat.Properties.VariableNames{i})=dat2;
                    
                end
                tab.Data=dat;
                set(tab, 'ColumnName',dat.Properties.VariableNames);
                
            case 'Mean Imputer'
                
                for i=(unique(c))'
                    dat2= dat.(dat.Properties.VariableNames{i});
                    dat2(r(c==i))=mean(dat2);
                    dat.(dat.Properties.VariableNames{i})=dat2;
                    
                end
                tab.Data=dat;
                set(tab, 'ColumnName',dat.Properties.VariableNames);
                         
            case 'Median Imputer'
                for i=(unique(c))'
                    dat2= dat.(dat.Properties.VariableNames{i});
                    i
                    c
                    dat2
                    dat2(r(c==i))=median(dat2);
                    dat.(dat.Properties.VariableNames{i})=dat2;
                    
                end
                tab.Data=dat;
                set(tab, 'ColumnName',dat.Properties.VariableNames);
            case 'KNN Imputer'
                for i=(unique(c))'
                    dat2= dat.(dat.Properties.VariableNames{i});
                    i
                    c
                    dat2
                    dat2(r(c==i))=missing;
                    dat.(dat.Properties.VariableNames{i})=dat2;
                    
                end
                tab.Data=dat;
                set(tab, 'ColumnName',dat.Properties.VariableNames);
                
        end
        d.Value=1;
        delete(d);
    end

    function ata(varargin)
       d = uiprogressdlg(f,'Message','This process will take few minutes',...
                'Title','CRLB Menu');
            d.Value=0.5 
        [xa,fa]=assignVals3(app,list.Value,list.Items);
        
        waitfor(fa);
        app.reqVars2
        
        removeStyle(tab);
        VThe=(edtV.Value);
        LThe=(edtL.Value)/100;
        s = uistyle("BackgroundColor",'green',"FontColor",'black');
        s2 = uistyle("BackgroundColor",'red',"FontColor",'white');
        s3=uistyle("BackgroundColor",'yellow',"FontColor",'black');
        [~,ind]=(ismember(list.Value,list.Items));
        addStyle(tab,s,'column',ind);
        addStyle(tab,s,'column',app.reqVars2);
        
        arr=table2array(tab.Data(:,ind))<VThe;
        the=sum(~arr);
        try
            addStyle(tab,s2,'column',app.reqVars2(the>(length(arr)*LThe)));
            addStyle(tab,s2,'column',ind(the>(length(arr)*LThe)));
            
            
        catch
        end
        d.Value=0.8;
        colVals=(the<(length(arr)*LThe));
        colVals=find(colVals==1)
        arr=arr(:,(the<(length(arr)*LThe)));
        ind2=sum(arr,2)==size(arr,2);
        [ind3,~]=find(ind2==0);
       
        %tab.Data=tab.Data(ind2,:);
        col=ind(the<(length(arr)*LThe));
        [row,~]=find(ind2==0);
        [rows]=ones(1,size(tab.Data,1));

        [r,c]=find(arr==0);
        [r2,c2]=find(arr==1);
       d.Value=1;
       
        c=app.reqVars2(colVals(c))';
        c2=app.reqVars2(colVals(c2))';
        
        col2=app.reqVars2(colVals);
        addStyle(tab,s3,'cell',[r,c]);
       delete(d);
    end


end