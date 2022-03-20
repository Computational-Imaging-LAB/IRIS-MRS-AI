function scripttester2(app)
% This script is for adding required variables to app components

%Abdullah BAŞ
%Bogazici University BME Ph.D
%19.08.2020
a=findobj(app.excelpanel,'type','Axes');
b=get(a(1),'Children');
for i=1:length(a)

    set(a(i).Title,'ButtonDownFcn',@textHandler);
    a(i).YLabel.ButtonDownFcn=@textHandler;
    a(i).XLabel.ButtonDownFcn=@textHandler;
  
end
end