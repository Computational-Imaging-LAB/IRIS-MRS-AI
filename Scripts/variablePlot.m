function variablePlot(ax,data,groups,varargin)
%%
% This script is for visualization.
% data is the input table.
% groups is the index of the response
% 25.10.2020
% Abdullah BAŞ
% BME BOĞAZİÇİ
% İstanbul Üsküdar
%%

classes=data(:,groups);
inds=ones(1,size(data,2));
inds(groups)=0;
groups2=table2array(data(:,groups));
data2=data(:,find(inds==1));
val=varargin;

classes=table2array(unique(classes));
try
classes=classes(~(isnan(classes)));
catch
classes=string(classes(~(classes=="")));
end
classes

k=1;
for i =classes';
    
        
        dats=data2(groups2==i,:);
        if val{1}
            scatter(ax,i*ones(1,size(dats,1)),(dats.(val{2})),'DisplayName',num2str(i));
            ax.Title.String=val{2}
            xticks(ax,[])
            
        else
            x=table2array(dats);
            SEM = std(x)./sqrt(length(x));               % Standard Error
            
            conf = val{4};
            alpha = 1 - conf;
            pLo = alpha/2;
            pUp = 1 - alpha/2;
            
            
            ts = tinv([pLo  pUp],size(x,1)-1);
            means=mean(x,1);
            CI = mean(x,1) + ts(1)*SEM    
            CI2=mean(x,1) + ts(2)*SEM
            plot(ax,mean(table2array(dats),1),'-mo','MarkerEdgeColor','k',...
                'LineWidth',2,'Color',rand(1,3),'DisplayName',num2str(i),'MarkerFaceColor',[0.1 0.1 0.6]);
            xticks(ax,[1:size(dats,2)])
            xticklabels(ax,dats.Properties.VariableNames);
            if val{3}
            patch(ax,[[1:size(dats,2)] fliplr([1:size(dats,2)])], ...
                [CI fliplr(CI2)],[rand rand rand],'EdgeColor','None', ...
                'DisplayName',[num2str(i) ' Confidence Interval' ],'FaceAlpha',0.3)
            end
            
        end
        hold(ax,'on');
        
        
        
    
    
end
hold(ax,'off');
ax.XLim=[min(ax.XLim-2),max(ax.XLim+2)];
%ax.YLim=[max(ax.YLim*-1.22),max(ax.YLim*1.2)];
legend(ax)
end