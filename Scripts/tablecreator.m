function formalTable=tablecreator(headers,data)
formalTable = mlreportgen.dom.FormalTable(headers,data);
formalTable.RowSep = "Solid";
formalTable.ColSep = "Solid";
formalTable.Border = "Solid";
formalTable.Header.TableEntriesStyle = [formalTable.Header.TableEntriesStyle,...
    {mlreportgen.dom.Bold(true)}];
formalTable.TableEntriesStyle = [formalTable.TableEntriesStyle,...
    {mlreportgen.dom.InnerMargin("2pt","2pt","2pt","2pt"),...
    mlreportgen.dom.WhiteSpace("preserve")}];

end