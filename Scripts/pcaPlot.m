%% PCA Plot is the function that creates PCA plot
%% ax is the axis that you want to show the plot
%% data is whole table
% Abdullah BAŞ
% Boğaziçi University CIL BOUN
% TRNC
% abdullah.bas@boun.edu.tr

function pcaPlot(ax,data,groups,dim,lines,dax)


classes=data(:,groups);
inds=ones(1,size(data,2));
inds(groups)=0;
groups2=table2array(data(:,groups));
data2=data(:,find(inds==1));


classes=table2array(unique(classes));
try
classes=classes(~(isnan(classes)));
catch
classes=string(classes(~(classes=="")));
end
k=1;

for i=classes'
    
            dats=data2(groups2==i,:);
try
   [coeff,score,latent] = pca(table2array(dats));
   
    biplot(ax,coeff(:,1:dim),'scores',score(:,1:dim),'varlabels',dats.Properties.VariableNames,...
        'Color',[rand rand rand],'MarkerSize',10,'DisplayName',num2str(i));
   catch
  
   end 
    
    
    
end

a=findobj(ax,'Type','Line','Tag','varline');
set(a,'Color','black','LineWidth',2);

a=findobj(ax,'Type','Text','Tag','varname')
set(a,'Color','black','FontWeight','Bold');
a=findobj(ax,'Type','Line','Tag','varline')
set(a,'Color','black','LineWidth',2);
if lines
    delete(a);
    a=findobj(ax,'Type','Text');

delete(a);
end
%legend(ax);
end