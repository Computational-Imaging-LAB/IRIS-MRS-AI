function html = ttest_html(data,group,variables,test_type)

if test_type=="t-test"
    [h,p,ci,stats]=ttest(data)
elseif test_type=="Two-sample t-test"
    un=unique(group)
    un=un(~isnan(un))
    
    indices=group==un(1)'
    disp(indices)
    [h,p,ci,stats]=ttest2(data(indices,:),data(~indices,:))
elseif test_type=="Paired t-test"
    un=unique(group)
    un=un(~isnan(un))
    
    indices=group==un(1)'
    disp(indices)
    [h,p,ci,stats]=ttest2(data(indices,:),data(~indices,:))
elseif test_type=="One-Way ANOVA"
    [h,p,stats]=manova1(data,group)
end

start={'<head>',
    '<body>',
    '<div>',
    '<h2 style=''text-align:center''>Ttest Statistical Result</h2>',
    '<h3>One-sample ttest results</h3>',
    '<table>',
    '<tr>',
    '<th style="padding:5px,line-height:3.5em"><u>Feature</u></th>',
    '<th style="padding:0 15px 0 15px;"><u>p-val</u></th>',
    '<th style="padding:0 15px 0 15px;"><u>Hypothesis < 0.05</u></th>',
    '<th style="padding:0 15px 0 15px;"><u>tstat</u></th>',
    '<th style="padding:0 15px 0 15px;"><u>Degrees of Freedom</u></th>',
    '<th style="padding:0 15px 0 15px;"><u>Standard Deviation</u></th>',
    '</tr>'}

vals={'<tr>',
    '<td style="text-align:center; color:rgb(0,0,0);">CH</td>',
    '<td style="text-align:center; padding:0 15px 0 15px;">CH</td>',
    '<td style="text-align:center; padding:0 15px 0 15px;">CH</td>',
    '<td style="text-align:center; padding:0 15px 0 15px;">CH</td>',
    '<td style="text-align:center; padding:0 15px 0 15px;">CH</td>',
    '<td style="text-align:center; padding:0 15px 0 15px;">CH</td>',
    '</tr>'
    }

endage={
    
'</table>',
'</div>',
'</body>',
'</head>'}




for i =1:length(p)
    vals2=vals
    if p(i)<0.05
        
        vals2{2}=strrep(vals2{2},'rgb(0,0,0)','rgb(155,0,0)')
        vals2{2}=strrep(vals2{2},'CH','CH*')
        
    end
    vals2{2}=strrep(vals2{2},'CH',variables{i})
    vals2{3}=strrep(vals2{3},'CH',num2str(p(i),3))
    vals2{4}=strrep(vals2{4},'CH',num2str(h(i),3))
    vals2{5}=strrep(vals2{5},'CH',num2str(stats.tstat(i),3))
    vals2{6}=strrep(vals2{6},'CH',num2str(stats.df(i),3))
    vals2{7}=strrep(vals2{7},'CH',num2str(stats.sd(i),3))
    
    start=[start;vals2];
end

start=[start;endage]
html=join(start,' ')


end