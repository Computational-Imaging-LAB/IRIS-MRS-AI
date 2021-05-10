function K=reportprepare(app,K,i)

try
  app.out{K,3}=app.currentModel
  app.out{K,3+i}=round(app.automodels.(app.currentModel).plots.Accuracy,3);
  app.out{K+1,3+i}=round(app.automodels.(app.currentModel).plots.sensitivity{2},3);
  app.out{K+2,3+i}=round(app.automodels.(app.currentModel).plots.specificity{2},3);
K=K+3;
catch
  app.out{K,3}=app.currentModel
  app.out{K,3+i}=0
  app.out{K+1,3+i}=0
  app.out{K+2,3+i}=0
 K=K+3;
    
end



end