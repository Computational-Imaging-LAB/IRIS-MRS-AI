function [features,FitInfo,features2]=lassoFeature(tableV,predictors,response)

rng default % For reproducibility 

x=table2array(tableV(:,predictors));
y=table2array(tableV(:,response));

[features2,FitInfo] = lasso(x,y,'CV',10);

idxLambdaMinMSE = FitInfo.IndexMinMSE;
features = (features2(:,idxLambdaMinMSE)~=0);

features=find(features==1);

end