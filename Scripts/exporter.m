function exporter(tabdata,indices,trueclass)
%%This script is for exporting predicted indices and add results to the end
%%of the table
%Abdullah BAŞ 

format={'*.txt';'*.xlsx'}
            table=tabdata;
            format={'*.txt';'*.xlsx'}
            [file,path]=uiputfile(format)
            table=table(indices(:,1),:);
            a=zeros(size(table,1),1);
            a(trueclass)=1
            a=zeros(size(table,1),1)            
            a(trueclass)=1 
           
            table.predicted=a;           
            writetable(table,[path,file]);


            
            
end