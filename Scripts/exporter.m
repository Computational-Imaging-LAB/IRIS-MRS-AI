function exporter(tabdata,indices,trueclass)
%%This script is for exporting predicted indices and add results to the end
%%of the table
%Abdullah BAŞ 

format={'*.txt';'*.xlsx'}
            table=tabdata;
            format={'*.txt';'*.xlsx'}
            [file,path]=uiputfile(format)
            table=table(indices(:,1),:);
            
           
            table.predicted=trueclass;           
            writetable(table,[path,file]);


            
            
end