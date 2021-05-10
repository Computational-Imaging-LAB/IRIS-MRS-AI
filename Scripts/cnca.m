function [features,L]=cnca(tablev,predictors,response,verbose)


obs=table2array(tablev(:,predictors));
grp=table2array(tablev(:,response));

rng(2); % For reproducibility
cvp = cvpartition(grp,'holdout',0.2)

Xtrain = obs(cvp.training,:);
ytrain = grp(cvp.training,:);
Xtest  = obs(cvp.test,:);
ytest  = grp(cvp.test,:);


nca = fscnca(Xtrain,ytrain,'FitMethod','exact','Lambda',0,...
      'Solver','sgd','Standardize',true,'Verbose',verbose);
  
[cx,features]=sort(nca.FeatureWeights);



  
L = loss(nca,Xtest,ytest);


end