function barplotM(ax,data,groups)

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
classes

k=1;
means=zeros(1,size(data2,2));
for i=classes'
            dats=data2(groups2==i,:);

    means=[means;mean(table2array(dats),1)];
   
    
end
            b=bar3(ax, means(2:end,:));

            set(ax,'yticklabel',classes);
            set(ax,'xticklabel',dats.Properties.VariableNames);
            %ax.Grid="off";
            rotate3d (ax,'on');
            
           
        
        
end
            