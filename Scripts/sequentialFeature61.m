function [fs,history]=sequentialFeature61(tableV,predictors,response,verbose)

rng('default') % For reproducibility
X = table2array(tableV(:,predictors));

y = table2array(tableV(:,response));

c = cvpartition(y,'k',4)
opts = statset('Display','iter');

fun = @(XT,yT,Xt,yt)loss(fitcecoc(XT,yT),Xt,yt);


[fs,history] = sequentialfs(fun,X,y,'cv',c,'options',opts)



end