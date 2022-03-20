function [ans2,model]=trainer(app,script,Label,trainerResp,trainerPredictors);

trainerPredictors

table=app.UITable5.Data
varnames=app.UITable5.Data.Properties.VariableNames
response=varnames(trainerResp);

if ~isempty(trainerPredictors)
    for i=1:length(trainerPredictors)
        if iscell(table2array(table(:,trainerPredictors(i))))
            columnName=varnames(trainerPredictors(i))
            table.(columnName{1})=categorical(table2array(table(:,trainerPredictors(i))))
            categoricalVal(i)=1
        else
            categoricalVal(i)=0
        end
    end
    values=app.UITable5.Data(:,trainerPredictors);
    
else
    values=removevars(app.UITable5.Data,response{1});
end
categoricalVal(end+1)=0
if iscell(app.UITable5.Data(:,trainerResp))
    categoricalVal(end)=1
end


values=[values,app.UITable5.Data(:,trainerResp)]



if app.auto==1
    
    func=str2func(script);
    class=unique(table2array(app.UITable5.Data(:,trainerResp)));
    [model,a]=func(values,size(values,2),app.Spinner.Value,app.HoldOutSlider.Value/100,class,categoricalVal)
    model.CRLB=app.crlb;
    app.(Label).FontColor="White";
    app.(Label).FontWeight='bold';
    num2str(app.(Label).BackgroundColor)
    if string((app.(Label).BackgroundColor))~="none"
        
        ansx=strsplit(app.(Label).Text,' ')
        
        ansx=[strjoin({ansx{1:end-1}},' ') ' ' num2str(a,2)];
        app.(Label).Text=ansx;
        
    else
        app.(Label).Text=[app.(Label).Text ' ' num2str(a,2)]
    end
    app.(Label).BackgroundColor=[0.00,0.45,0.74];
    ss=strsplit(Label,'Label')
    ans2={ss{1}};
    app.(Label).Tooltip=sprintf(['Specificity=' num2str([model.plots.specificity{:}],3) '\n' ...
        'Sensitivity=' num2str([model.plots.sensitivity{:}],3)]);
    return;
end
fig=app.GliomaIDHMutationDiagnosisToolUIFigure;
msg='Please Select the process';
title='Options';
answer = uiconfirm(fig,msg,title,...
    'Options',{'New','New & Save','Save','Cancel'}...
    ,'CancelOption',4,'Icon','info');


switch answer
    
    case "New"
        prompt = {'Please Enter Model Name:','Please enter class names:'};
        dlgtitle = 'Input';
        dims = [1 35];
        definput = {'DefaultModel','class1 class2 class3 class4'};
        answer = inputdlg(prompt,dlgtitle,dims,definput)
        ans2=answer;
        class=strsplit(answer{2},' ');
        
        func=str2func(script);
        [model,a]=func(values,size(values,2),app.Spinner.Value,app.HoldOutSlider.Value/100,class,categoricalVal)
        model.CRLB=app.crlb;
        app.(Label).Tooltip=sprintf(['Specificity=' num2str([model.plots.specificity{:}],3) '\n' ...
            'Sensitivity=' num2str([model.plots.sensitivity{:}],3)]);
        app.(Label).FontColor="White";
        app.(Label).FontWeight='bold';
        num2str(app.(Label).BackgroundColor)
        if string((app.(Label).BackgroundColor))~="none"
            
            ansx=strsplit(app.(Label).Text,' ')
            
            ansx=[strjoin({ansx{1:end-1}},' ') ' ' num2str(a,2)];
            app.(Label).Text=ansx;
            
        else
            app.(Label).Text=[app.(Label).Text ' ' num2str(a,2)]
        end
        app.(Label).BackgroundColor=[0.00,0.45,0.74];
        
    case "New & Save"
        prompt = {'Please enter class names:'};
        dlgtitle = 'Input';
        dims = [1 35];
        definput = {'class1 class2 class3 class4'};
        answer = inputdlg(prompt,dlgtitle,dims,definput)
        ans2=answer;
        class=strsplit(answer{1},' ');
        
        func=str2func(script);
        [model,a]=func(values,size(values,2),app.Spinner.Value,app.HoldOutSlider.Value/100,class,categoricalVal)
        model.CRLB=app.crlb;
        app.(Label).Tooltip=sprintf(['Specificity=' num2str([model.plots.specificity{:}],3) '\n' ...
            'Sensitivity=' num2str([model.plots.sensitivity{:}],3)]);
        app.(Label).FontColor="White";
        app.(Label).FontWeight='bold';
        if string((app.(Label).BackgroundColor))~="none"
            
            ansx=strsplit(app.(Label).Text,' ')
            
            ansx=[strjoin({ansx{1:end-1}},' ') ' ' num2str(a,2)];
            app.(Label).Text=ansx;
            
        else
            app.(Label).Text=[app.(Label).Text ' ' num2str(a,2)]
        end
        app.(Label).BackgroundColor=[0.00,0.45,0.74];
        
        [file,path]=uiputfile({'*.mat'});
        txtmodelReader('save','path','modelsLog.txt','modelname',[path file]);
        %[fs filesep ans2{1} '.mat' ]
        ans2=strsplit(file,'.');
        save([path file],'model');
    case 'Save'
        
        
        try
            
            s=strsplit(Label,'Label')
            
            
            a=app.automodels.(s{1});
        catch
            uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,'There is no model trained with this method','Error','Icon','Error')
            ans2=''
            model=''
            return
        end
        filter = {'*.mat'};
        [file, path] = uiputfile(filter);
        if file==0
            model=''
            ans2=''
            return;
        end
        s2=strsplit(file,'.');
        ans2=s2;
        prompt = {'Please enter class names:'};
        dlgtitle = 'Input';
        dims = [1 35];
        ba=(a.classes(~isnan(a.classes)))';
        
        definput = {num2str(ba)}
        answer = inputdlg(prompt,dlgtitle,dims,definput)
        class=strsplit(answer{1},' ')
        
        a.classes=strsplit(num2str(ba),' ')
        a.pseudo_classes=class;
        model=a;
        save([path ,file],'model');
        app.(Label).Tooltip=sprintf(['Specificity=' num2str([model.plots.specificity{:}],3) '\n' ...
            'Sensitivity=' num2str([model.plots.sensitivity{:}],3)]);
        txtmodelReader('save','path','modelsLog.txt','modelname',[path ,file]);
        ans2=strsplit(file,'.');
        uiconfirm(app.GliomaIDHMutationDiagnosisToolUIFigure,['Saved to : ' path file],'Model is Saved','Icon','success')
    case "Cancel"
        ans2=''
        model=''
end
end