function [trainedClassifier, validationAccuracy] = CoarseKNNS(trainingData,response2,Folds,HoldOut,classt,categoricalVal)
% [trainedClassifier, validationAccuracy] = trainClassifier(trainingData)
% Returns a trained classifier and its accuracy. This code recreates the
% classification model trained in Classification Learner app. Use the
% generated code to automate training the same model with new data, or to
% learn how to programmatically train models.
%
response2
%  Input:
%      trainingData: A matrix with the same number of columns and data type
%       as the matrix imported into the app.
%
%  Output:
%      trainedClassifier: A struct containing the trained classifier. The
%       struct contains various fields with information about the trained
%       classifier.
%
%      trainedClassifier.predictFcn: A function to make predictions on new
%       data.
%
%      validationAccuracy: A double containing the accuracy in percent. In
%       the app, the History list displays this overall accuracy score for
%       each model.
%
% Use the code to train the model with new data. To retrain your
% classifier, call the function from the command line with your original
% data or new data as the input argument trainingData.
%
% For example, to retrain a classifier trained with the original data set
% T, enter:
%   [trainedClassifier, validationAccuracy] = trainClassifier(T)
%
% To make predictions with the returned 'trainedClassifier' on new data T2,
% use
%   yfit = trainedClassifier.predictFcn(T2)
%
% T2 must be a matrix containing only the predictor columns used for
% training. For details, enter:
%   trainedClassifier.HowToPredict

% Auto-generated by MATLAB on 31-May-2020 03:30:11


% Extract predictors and response
% This code processes the data into the right shape for training the
% model.
% Convert input to table
summary(trainingData)

inputTable=trainingData;

predictorsInd=(1:size(trainingData,2));



predictorsInd(response2)=[];
predictorNames = trainingData.Properties.VariableNames(predictorsInd);
predictors = inputTable(:, predictorNames);
response = inputTable.(inputTable.Properties.VariableNames{response2});



isCategoricalPredictor = categoricalVal
% Train a classifier
classes=unique(response(~isnan(response)));
% This code specifies all the classifier options and trains the classifier.




classificationKNN= fitctree(...
    predictors, ...
    response, ...
    'SplitCriterion', 'gdi', ...
    'MaxNumSplits', 4, ...
    'Surrogate', 'off', ...
    'ClassNames', classes);



% Create the result struct with predict function
predictorExtractionFcn = @(y) y(:, predictorNames);
knnPredictFcn = @(x) predict(classificationKNN, x);
trainedClassifier.predictFcn = @(x) knnPredictFcn(predictorExtractionFcn(x));
trainedClassifier.plots.cm='1';
trainedClassifier.plots.X='1';
trainedClassifier.plots.Ygt='1';
trainedClassifier.plots.Ypr='1';
trainedClassifier.plots.sensitivity='1';
trainedClassifier.plots.specifity='1';


% Add additional fields to the result struct
trainedClassifier.Classification = classificationKNN;
trainedClassifier.About = 'This struct is a trained model exported from Classification Learner R2020a.';
trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  yfit = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedModel''. \n \nX must contain exactly 13 columns because this model was trained using 13 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into the app. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');

% Extract predictors and response
% This code processes the data into the right shape for training the
% model.
% Convert input to table
inputTable=trainingData;
predictorsInd=(1:size(trainingData,2));
predictorsInd(response2)=[];
predictorNames = trainingData.Properties.VariableNames(predictorsInd);
predictors = inputTable(:, predictorNames)
response = inputTable.(string(inputTable.Properties.VariableNames{response2}));
response=response(~isnan(response));
isCategoricalPredictor = [false, false, false, false, false, false, false, false, false];
% Perform cross-validation




if HoldOut>0

cvp = cvpartition(response, 'Holdout', HoldOut);
trainingPredictors = predictors(cvp.training, :);
trainingResponse = response(cvp.training, :);
trainingIsCategoricalPredictor = isCategoricalPredictor;



classificationKNN= fitctree(...
    trainingPredictors, ...
    trainingResponse, ...
    'SplitCriterion', 'gdi', ...
    'MaxNumSplits', 4, ...
    'Surrogate', 'off', ...
    'ClassNames', classes);


% Create the result struct with predict function
predictorExtractionFcn = @(y) y(:, predictorNames);
knnPredictFcn = @(x) predict(classificationKNN, x);
trainedClassifier.predictFcn = @(x) knnPredictFcn(predictorExtractionFcn(x));

% Add additional fields to the result struct
trainedClassifier.Classification = classificationKNN;
trainedClassifier.About = 'This struct is a trained model exported from Classification Learner R2020a.';
trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  yfit = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedModel''. \n \nX must contain exactly 13 columns because this model was trained using 13 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into the app. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');

% Extract predictors and response
% This code processes the data into the right shape for training the
% model.
% Convert input to table
inputTable=trainingData;
predictorsInd=(1:size(trainingData,2));
predictorsInd(response2)=[];
predictorNames = trainingData.Properties.VariableNames(predictorsInd);
predictors = inputTable(:, predictorNames)
response = inputTable.(string(inputTable.Properties.VariableNames{response2}));
response=response(~isnan(response));
isCategoricalPredictor = [false, false, false, false, false, false, false, false, false];
% Perform cross-validation

predictors = predictors(cvp.test, :);
response = response(cvp.test, :);
[validationPredictions, validationScores] = trainedClassifier.predictFcn(predictors);
correctPredictions = (validationPredictions == response);
validationAccuracy = sum(correctPredictions)/length(correctPredictions);


else

partitionedModel = crossval(trainedClassifier.Classification, 'KFold', Folds);
% Compute validation predictions

[validationPredictions, validationScores] = kfoldPredict(partitionedModel);
% Compute validation accuracy;
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');
disp("resp")

end





ygt=response;
ypr=validationPredictions;
for i=classes'
   TP=sum((ygt==i).*(ypr==i))
   FN=sum((ygt==i).*~(ypr==i)) 
   FP=sum(~(ygt==i).*(ypr==i))
   TN=sum(~(ygt==i).*~(ypr==i))
   cmVals{i+1}=[TP FN FP TN]
   
   Sens{i+1}=(TP)/(TP+FN);
   Specificity{i+1}=(TN)/(FP+TN);
 
end
trainedClassifier.RequiredVariables=predictorNames;

[X,Y,T,AUC,OPTROCPT,SUBY,SUBYNAMES] = perfcurve(response,validationPredictions,1);
trainedClassifier.plots.AUC=AUC;
trainedClassifier.plots.OPTROCPT=OPTROCPT;
trainedClassifier.plots.T=T;
trainedClassifier.plots.SUBY=SUBY;
trainedClassifier.plots.SUBYNAMES=SUBYNAMES;
trainedClassifier.plots.X=X;
trainedClassifier.plots.Y=Y;
trainedClassifier.plots.Ygt=response;
trainedClassifier.plots.Ypr=validationPredictions;
trainedClassifier.plots.sensitivity=Sens;
trainedClassifier.plots.specificity=Specificity;
trainedClassifier.plots.cmVals=cmVals;
trainedClassifier.plots.Accuracy=validationAccuracy;
trainedClassifier.classes=classt;

end


