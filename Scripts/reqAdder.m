function reqAdder(app,models,name,modelName)
% This script is for adding required variables to app components
models
modelName
%Abdullah BAŞ
%Bogazici University BME Ph.D
%19.08.2020
try
m=models.(modelName).(modelName)
   
for i =1:length(name)
       app.(name{i}).Items= models.(modelName).(modelName).RequiredVariables;
   end
catch
    for i =1:length(name)
       app.(name{i}).Items= models.(modelName).RequiredVariables;
   end
end
end