function reporter(f,tableA,name,groups,groupsize,iterations,compact)
tic

% groupsize={{[68,68]},{[154,148]},{[196,202]},{[54,44]},{[188,187]}}
% groups={{[0,1]},{[0,1]},{[0,1]},{[0,1]},{[0,1]}}
% groupsize
% iterations={{[50,50,50]},{[50,50,50]},{[50,50,50]},{[50,50,50]},{[50,50,50,50]}}
makeDOMCompilable();

import mlreportgen.dom.*;
import mlreportgen.report.*;

wait=uiprogressdlg(f,'Title','Reporting','Message','Reporting will take some time')
wait.Value=0.2;
responses= tableA.Response(~cellfun('isempty',tableA.Response));
str=strjoin(responses,', ');
rpt = mlreportgen.report.Report(name, "pdf");

%%
%First Page
tic

intro=Chapter("Title",'Glioma Genetic Diagnosis Tool Advanced User Menu Report')
a=Image(which(('advace.png')));

p = Paragraph('Glioma Genetic Diagnosis Tool Advanced User Menu Report');
p.Style = {OuterMargin('0.5in','0in','0in','12pt')};
p.HAlign='center';
p.FontSize='26pt';
p.Color='blue';
add(rpt,p);

wait.Value=0.2;

p = Paragraph('Creation Date');
p.Style = {OuterMargin('0.5in','0in','2in','12pt')};
p.HAlign='center';
p.FontSize='14pt';
p.Color='blue';
add(rpt,p);



p = Paragraph(date);
p.Style = {OuterMargin('0.5in','0in','0in','12pt')};
p.HAlign='center';
p.FontSize='12pt';
p.Italic=true;
add(rpt,p);


p = Paragraph('Selected Responses');
p.Style = {OuterMargin('0.5in','0in','1in','12pt')};
p.HAlign='center';
p.FontSize='14pt';
p.Color='blue';
add(rpt,p);


p = Paragraph(str);
p.Style = {OuterMargin('0.5in','0in','0in','12pt')};
p.HAlign='center';
p.FontSize='12pt';
p.Italic=true;
add(rpt,p);


p = PDFPageFooter('This application software is funded by TUBITAK');
toc
%% 
%Second page

a=Image(which('GL.jpg'));
centerFigure(a,rpt);
%%
tic
%Third Page
respUnique=unique(responses,'stable');

for jj=1:length(respUnique)
indResp=find(ismember(tableA.Response,{respUnique{jj}}));
indices=1;
for i=1:length(indResp)
    indices=[indices indResp(i):indResp(i)+50];
end

table=tableA(indices(2:end),:);
count= table.Features(~cellfun('isempty',table.Features));
data{jj+1,1}=respUnique{jj};
groups
  

gr=((groups{jj}));
gr=gr{1}';
gr=strsplit(num2str(gr),' ');

grSize=((groupsize{jj}));
grSize=strsplit(num2str(grSize{1}'),' ');

grSize=strjoin(grSize,'-');
gr=strjoin(gr,'-');
gr=append(gr,'(');
gr=append(gr,grSize);
gr=append(gr,')');

data{jj+1,2}=gr;
data{jj+1,3}=length(count);
data{jj+1,4}=length(unique(count));
iter=iterations{jj}
iter=num2str([iter{:}])
iter=strsplit(iter,' ')
data{jj+1,5}=num2str(strjoin(iter,','));
    

count= table.Features(~cellfun('isempty',table.Features));
FSinds=[];
CMinds=[];
acc=0;
spec=0;
sens=0;
mxc=0;
for cc=1:length(count)
    inx=find(ismember(table.Features,count{cc}))
    tab2=table2array(table(inx:inx+50,4:end));
    
    d=tab2;
    d(isnan(d))=0;
    d=d(1:3:end,:).*(1-abs(d(2:3:end,:)-d(3:3:end,:))/2);
    [mxacc,csIr]=max(nanmean(d,2))
    
    if mxc<mxacc
        mxc=mxacc;
        acc=mxacc;

        
        spec=max(nanmean(tab2(csIr+1,:),2))
        sens=max(nanmean(tab2(csIr+2,:),2))
        FSinds(1)=cc;
        FSinds(2)=cc;
        FSinds(3)=cc;
    end
   
  
end
tab2=table2array(table(:,4:end));
acc1=0;
spec1=0;
sens1=0;
accmean=0;
specmean=0;
sensmean=0;
    
    d=tab2;
    d(isnan(d))=0;
    d=d(1:3:end,:).*(1-abs(d(2:3:end,:)-d(3:3:end,:))/2);
    [mxAcc,csIr]=max(nanmean(d,2))
    

    if acc1<mxAcc
         row=((csIr-1)*3)+1;

        acc1=nanmean(tab2(row,:),2);
        CMinds(1)=row;
        spec1=nanmean(tab2(row+1,:),2);
        CMinds(2)=cc;
        sens1=nanmean(tab2(row+2,:),2);
        CMinds(3)=cc;
    end
    
   
    
   


    d=tab2;
    d(isnan(d))=0;
    d=d(1:3:end,:).*(1-abs(d(2:3:end,:)-d(3:3:end,:))/2);
    [mxAcc,csIr]=max(d(:))
    [csI(1) csI(2)]=ind2sub(size(d),csIr)
    
    if accmean<mxacc
        row=((csI(1)-1)*3)+1;
        accmean=tab2(row,csI(2));
        CMinds(1)=((csI(1)-1)*3)+1;
        specmean=tab2(row+1,csI(2))
        CMinds(2)=csI(1);
        sensmean=tab2(row+2,csI(2));
        CMinds(3)=csI(1);
    end




data2{jj+1,1}=respUnique{jj};

answ=strsplit(string(count(FSinds(1))),' ')
if length(answ)==1
   answ{1}='All-FS1'; 
end
data2{jj+1,2}=[answ{1} ]
data2{jj+1,3}=[table.Methods{CMinds(1)} ];
data2{jj+1,4}=[num2str(acc1,3),' / ' ,num2str(accmean,3) ];
data2{jj+1,5}=[ num2str(spec1,3),' / ' ,num2str(specmean,3)];

data2{jj+1,6}=[num2str(sens1,3),' / ' ,num2str(sensmean,3)];
%data2{jj+1,7}=[table.Methods{CMinds(1)} '(' num2str(sens1) ')'];

end
resp{1}='Groups';
resp{2}='Trials';
resp{3}='FS Methods';
resp{4}='Iterations';

wait.Value=0.4;
data
formalTable=tablecreator(['Classes ' resp],data);
chapter = Chapter("Title","Tables");
chapter.Layout.Landscape=true;
slicer = mlreportgen.utils.TableSlicer("Table",formalTable,"MaxCols",...
    8,"RepeatCols",1);
slices = slicer.slice();

for slice = slices
       para = Paragraph('Table1: Brief Metrics of experiment');
    para.Bold = true;
    para.Style = [para.Style,{KeepWithNext(true),...
        OuterMargin("0pt","0pt","2pt","0pt")}];
    add(chapter,para);
    add(chapter,slice.Table);
end
resp={};
resp{1}='Classes';
resp{2}='Best Fs';
resp{3}='Best Classifier (Mean/Max)';
resp{4}='Accuracy (Mean/Max)';
resp{5}='Specificity (Mean/Max)';
resp{6}='Sensitivity (Mean/Max)';

formalTable=tablecreator([ resp],data2);
data2
chapter.Layout.Landscape=true;
slicer = mlreportgen.utils.TableSlicer("Table",formalTable,"MaxCols",...
    8,"RepeatCols",1);

FSinds
slices = slicer.slice();

for slice = slices
       para = Paragraph('Table2: Best Performances');
    para.Bold = true;
    para.Style = [para.Style,{KeepWithNext(true),...
        OuterMargin("0pt","0pt","1in","0pt")}];
    add(chapter,para);
    add(chapter,slice.Table);
end
para = Paragraph('B.: Best ,FS: Feature Selection, Acc: Accuracy , Sens: Sensitivity, Spec: Specificity');
    para.Bold = true;
    para.Style = [para.Style,{KeepWithNext(true),...
        OuterMargin("3pt","2pt","4pt","6pt")}];
    add(chapter,para);
add(rpt,chapter);




toc
%%
% Brief Figures

for jj=1:length(respUnique)
tic
    figTable={};
indResp=find(ismember(tableA.Response,respUnique{jj}));
indices=1;
for i=1:length(indResp)
    indices=[indices indResp(i):indResp(i)+51]
end

table=tableA(indices(2:end-1),:);
count= table.Features(~cellfun('isempty',table.Features));

indices=find(~cellfun('isempty',table.Features));
indices(end+1)=size(table,1)+2;




chapter = Chapter(['Figures Grouped By Feature Selections (Response: ' ...
    respUnique{jj} ')']);
imgStyle = {ScaleToFit(true)};
imgStyle = {ScaleToFit(true)};


fig4Img={}
chapter.Layout.Landscape=true
for i=1:length(count)
    accuracy=[];
specificity=[];
sensitivity=[];
  subtab2={table.Methods{indices(i):indices(i+1)-2}};
  subtab=table2array(table(indices(i):indices(i+1)-2,4:end));
  methods= subtab2(~cellfun('isempty',subtab2));
  [a,b]=find(~isnan(subtab));
  subtab=subtab(:,unique(b));
    
  for k=1:length(methods)
      
      accuracy(end+1)=mean(subtab(k+((k-1)*2),:));

      specificity(end+1)=mean(subtab(1+k+((k-1)*2),:));
      sensitivity(end+1)=mean(subtab(2+k+((k-1)*2),:));
      
  end
    fig4=figure('visible','off');

    plot(accuracy,'-mo','MarkerSize',5,'Color','Red');
    hold on
    plot(specificity,'-mo','MarkerSize',5,'Color','Green');
    hold on
    plot(sensitivity,'-mo','MarkerSize',5,'Color','Blue');
    hold off
            ax=findobj(gcf,'type','Axes');

    xticks(ax,[1:length(methods)]);
    xlim(ax,[min(get(ax,'xlim'))-1,max(get(ax,'xlim')+1)]);
    xticklabels(ax,methods);
    xtickangle(ax,90);
    ax.XLabel.String='Classification Methods';
    ax.Title.String=count{i};
    
    
    legend(ax,{'Accuracy','Specificity','Sensitivity'});
    fig4=Figure(fig4);
    fig4.Snapshot.Caption = 'sdwazd2';
     rows=floor((i-0.04)/3)+1;
    col=mod(i,3)
    if col==0
        col=3;
    end
    fig=Image(getSnapshotImage(fig4, rpt));
    fig.Style = imgStyle;
    figTable{rows,col} = fig;
    

    %fig4Img{end+1}=''; 

  
  
  
  
  
  
end

wait.Value=0.6;

lo_table = Table(figTable);
% 
for i=1:lo_table.NRows
    for k=1:lo_table.NCols
lo_table.entry(i,k).Style = {Width('3.2in'), Height('2.75in')};
    end
end

add(chapter, lo_table);
add(rpt, chapter);


toc


%%
%Figures grouped by methods
tic
wait.Value=0.8;

chapter = Chapter(['Figures Grouped By Classification Methods (Response: '...
    respUnique{jj} ')']);
subtab=table2array(table(:,4:end));
imgStyle = {ScaleToFit(true)};
methods=table.Methods;
methods3= table.Methods(~cellfun('isempty',table.Methods));
methodsunique=unique(methods3);

fig4Img={};
chapter.Layout.Landscape=true;
for i=1:length(methodsunique)
    
    [ind2,~]=find(ismember(methods,methodsunique{i}));
    
    accuracy=[];
    specificity=[];
    sensitivity=[];
    
    for k=1:length(ind2)
        accuracy(end+1)=nanmean(subtab(ind2(k),:));
        specificity(end+1)=nanmean(subtab(ind2(k)+1,:));
        sensitivity(end+1)=nanmean(subtab(ind2(k)+2,:));
    end
    
    ticks=strsplit(num2str([1:length(count)]));
    ticks=append('FS',ticks);
    fig4=figure('visible','off');

    plot(accuracy,'-mo','MarkerSize',5,'Color','Red');
    hold on
    plot(specificity,'-mo','MarkerSize',5,'Color','Green');
    hold on
    plot(sensitivity,'-mo','MarkerSize',5,'Color','Blue');
    hold off
            ax=findobj(gcf,'type','Axes')

    xticks(ax,[1:length(count)]);
    xlim(ax,[min(get(ax,'xlim'))-1,max(get(ax,'xlim')+1)]);
    xticklabels(ax,ticks);
    xtickangle(ax,0);
    ax.XLabel.String='Feature Selection Methods (Described in following..) ';
    ax.Title.String=methodsunique{i};
    
    
    legend(ax,{'Accuracy','Specificity','Sensitivity'});
    fig4=Figure(fig4);
    fig4.Snapshot.Caption = 'sdwazd2';
     rows=floor((i-0.04)/3)+1;
    col=mod(i,3);
    if col==0
        col=3;
    end
    fig=Image(getSnapshotImage(fig4, rpt));
    fig.Style = imgStyle;
    figTable{rows,col} = fig;
    

    %fig4Img{end+1}=''; 

  
  
  
  
  
  
end


lo_table = Table(figTable);
%set(lo_table(:,:).Style,{Width('3.2in')})

for i=1:lo_table.NRows
    for k=1:lo_table.NCols
        lo_table.entry(i,k).Style = {Width('3.2in'), Height('2.75in')};
    end
end


add(chapter, lo_table);
add(rpt, chapter);


wait.Value=0.9;

for i=1:length(ticks)
   
    p = Paragraph([ticks{i} ':' count{i}]);
    p.Style = {OuterMargin('0.5in','0in','0in','5pt')};
    p.FontSize='6pt';
    p.Italic=true;
    p.Color='blue';
    add(rpt,p);

end

toc
%%
%Figures
if compact==0
else 
chapter = Chapter('Figures Grouped By Feature Selections and Iterations');
imgStyle = {ScaleToFit(true)};


for i=1:length(count)

  
  subtab=table2array(table(indices(i):indices(i+1)-2,4:end));
  [a,b]=find(~isnan(subtab));
  subtab=subtab(:,unique(b));
 
  for k=1:3:size(subtab,1)
    
    fig4=figure('visible','off');
    plot(subtab(k,:),'-mo','MarkerSize',5,'Color','Red');
    hold on
    plot(subtab(k+1,:),'-mo','MarkerSize',5,'Color','Green');
    hold on
    plot(subtab(k+2,:),'-mo','MarkerSize',5,'Color','Blue');
    hold off
    
    ax=findobj(gcf,'type','Axes');
    xlim(ax,[min(get(ax,'xlim'))-1,max(get(ax,'xlim')+1)]);
    
    ax.XLabel.String='Iterations';
    ax.Title.String=count{i};
    legend(ax,{'Accuracy','Specificity','Sensitivity'});
    fig4=Figure(fig4);
    fig4.Snapshot.Caption = 'sdwazd2';
        fig4Img = Image(getSnapshotImage(fig4, rpt));
    fig4Img.Style = imgStyle;

add(chapter, fig4Img);

    
    
      
      
      
     

  end

end

    add(rpt, chapter);



end


end
wait.Value=1;
delete(wait)
toc
close(rpt);

rptview(rpt);
end