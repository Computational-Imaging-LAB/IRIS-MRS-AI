function lo_table=centerFigure(figure,rpt)
import mlreportgen.dom.*
import mlreportgen.report.*
import mlreportgen.utils.*
pageLayout = getReportLayout(rpt);
pageSize = pageLayout.PageSize;
pageMargins = pageLayout.PageMargins;

bodyWidth = units.toInches(pageSize.Width) - ...
    units.toInches(pageMargins.Left) - ...
    units.toInches(pageMargins.Right);

if strcmpi(rpt.Type,"docx")
    bodyWidth = bodyWidth - ...
        units.toInches(pageMargins.Gutter);
end
bodyWidth = sprintf("%0.2fin",bodyWidth);


bodyHeight = units.toInches(pageSize.Height) - ...
    units.toInches(pageMargins.Top) - ...
    units.toInches(pageMargins.Bottom);

if strcmpi(rpt.Type,"pdf")
    bodyHeight = bodyHeight - ...
        units.toInches(pageMargins.Header) - ...
        units.toInches(pageMargins.Footer);
end
bodyHeight = sprintf("%0.2fin",bodyHeight);

fig = (figure);
figImg = figure;
figImg.Style = [figImg.Style {ScaleToFit}];

para = Paragraph(figImg);
para.Style = [para.Style {OuterMargin("0in","0in","0in","0in")}];

lo_table = Table({para});
lo_table.Width = bodyWidth;

lo_table.TableEntriesStyle = [lo_table.TableEntriesStyle ...
    { ...
    Height(bodyHeight), ...
    HAlign("center"), ...
    VAlign("middle") ...
    }];

add(rpt,lo_table);
end