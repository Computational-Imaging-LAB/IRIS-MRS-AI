
function structDisp(app,structs,node,listbox)

% This is the function of visualizing structures on treeNodes
% It needs structure, selected node and a listbox for output.
% app is the figure that handles all the operations
% 
% Abdullah BAŞ
% Bogazici University
% BME
% 01.08.2020


cx.models=structs;



txt='';
x.Text="aa";
try
    x=(node.Parent)
    
    x.Text;
    isstring(x.Text);
    while isstring(string(x.Text))
        
        
        txt=insertBefore([txt],1,[x.Text '.']);
        x=(x.Parent);
    end
    
    
catch
    
    
end


if isempty(txt)
    f=fieldnames(structs);
else
    
    try
        f=fieldnames(struct(eval(['cx.' txt node.Text])));
    catch
        try
        %msgbox("Not a struct please use plot or show to see data")
        app.(listbox).Items=string(num2cell((eval(['cx.' txt node.Text]))'));
        
        return;
        catch
            
            ff=app.GliomaIDHMutationDiagnosisToolUIFigure;
            
            selection = uiconfirm(ff,'Selected Data Type is not supported.','Would you like to save the node as mat file?',...
                        'Icon','warning')            
            switch selection
                case 'OK'
                    
                    dat=eval(struct(['cx.' txt node.Text]));
                    [file,path]=uiputfile();
                    save([path file],'dat');
            end
            return;
        end
        
    end
end
a=node.Children;
a.delete;
for i=1:length(f)
    
    cat1=uitreenode(node,'Text',f{i},'NodeData',[]);
    uitreenode(cat1,'Text',f{i},'NodeData',[]);
    
end