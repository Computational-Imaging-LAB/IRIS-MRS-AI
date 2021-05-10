
%                           SCRİPT TESTER                                 %
% ----------------------------------------------------------------------- %
%   It is for testing the scripts 
% ----------------------------------------------------------------------- %
%   Author:  Abdullah BAŞ                                                 %
%   Date:    15/08/2020                                                   %
%   E-mail:  abdullah.bas@boun.edu.tr                                     %
%   BME Bogazici University. Computational Imaging Lab                    %
%                                                                         %
% ----------------------------------------------------------------------- %



function [tert2,idh2,double2]=scripttester(app,tabledata,metabs,tert,idh,doble)

VAL=[9,12,13,14,3];
values1=tabledata.concentration([9,12,13]);
values2=tabledata.concentration([9,12,13,14,3]);

SD=tabledata.SDpct(unique([9,12,13,14,3]));
VAL2=VAL(find(SD>=30));
sdLarger={''};
for i=1:length(VAL2)
    
    sdLarger{i}=['Metab=' char(tabledata.name(VAL2(i)))   ' Value=' num2str(tabledata.concentration(VAL2(i))) ' SD=' num2str(tabledata.SDpct(VAL2(i)))];
    
end
if ~isempty(VAL2)
   app.SDLARGER.Items=sdLarger;

    h=questdlg('There are SD threshold violances','something','YES','NO','NO');
    switch h
        case 'YES'
            values1
            [tert2,tertPred]=tert.predictFcn(array2table(round(values1) ,'VariableNames',tert.RequiredVariables))
            [idh2,idhPred]=idh.predictFcn(array2table(round(values1),'VariableNames',idh.RequiredVariables))
            [double2,doublePred]=doble.predictFcn(array2table(round(values2),'VariableNames',doble.RequiredVariables))

        case 'NO'
            cond=0;%abort code
        otherwise
            cond=0;
    end
end





end