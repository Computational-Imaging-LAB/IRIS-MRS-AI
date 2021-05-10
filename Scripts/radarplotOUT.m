
%                           RADAR PLOT                                    %
% ----------------------------------------------------------------------- %
%%Creates a radar (spider) plot for multi-data series.
% This function creates radar plots for input matrices. Input matrices must
% be cell.
% ax is the axis that you want to plot. 
% R is the input data.
% Labels are the label cell matrix. Must be cell and same length with R{:}.
% varargin is used for 'LineColor','FillColor','LineStyle','WebNum'
% 17.08.2020
% Abdullah BAŞ
% Ph.D BME Bogazici University
% Turkish Republic Of Northern Cyprus

% ----------------------------------------------------------------------- %
%   Example of use:                                                       %
%                                                                         %
%       class_2 = 0.5+0.5*randn(100,1);                                   %
%       roc_curve(class_1, class_2);                                      %
% ----------------------------------------------------------------------- %
%   Version log:                                                          %
%       - 1.0: Original script (17/08/2020).                              %

% ----------------------------------------------------------------------- %
%   Author:  Abdullah BAŞ                                                 %
%   Date:    17/08/2020                                                   %
%   E-mail:  abdullah.bas@boun.edu.tr                                     %
%                                                                         %
%   Sources: Fawcett (2006), Powers (2011), and Ting (2011)               %
% ----------------------------------------------------------------------- %




function maxx=radarplotOUT(ax,R,Labels,varargin)



function FillColor(varargin)
   
prompt = {'Enter the color as RGB triplet - [r g b]','Enter face alpha - :'};
dlgtitle = 'Input';
dims = [1 35];
definput = {'[1 1 1]','0.3'};
answer = inputdlg(prompt,dlgtitle,dims,definput)

if ~isempty(answer)
varargin{1}.FaceColor=str2num(answer{1});
varargin{1}.FaceAlpha=str2num(answer{2});

end

end
property={'LineColor','FillColor','LineStyle','WebNum','isFirst','max','WebColor'};
value={[0 0 1],'None','',6,false,0,[1 1 1]};

le=length(varargin);
le=1:2:le;
%index = ismember(contains(property,varargin{le},'IgnoreCase',true))

[tf,inds]= (ismember(property,{varargin{le}}));

inds2=find(inds>0);
inds=nonzeros(inds)';
k=1;


vv={varargin{le+1}}

for i=inds2
    value{i}=vv{inds(k)}
    k=k+1;
end

 
n=size(R{1},2);
m=size(R{1},1);
maxx=value{6};
for i=1:length(R)
    
    if maxx<max(max(R{i}))
       maxx= max(max(R{i}));
    end
    
end
WebNum=value{4};

if value{4}>0 & ~value{5}
    
    AxisR=linspace(0,maxx*1.1,WebNum)
    for i=1:WebNum
        text(ax,AxisR(1)*sin((pi/n)*0.95),AxisR(i)*cos((pi/n)*0.95),num2str(AxisR(i),3),'FontSize',10,'Color',value{7})
    end
    [M,AxisR]=meshgrid(ones(1,n),AxisR);
    AxisR=[AxisR AxisR(:,1)];
    [AxisTheta,M]=meshgrid(2*pi/n*[0:n]+pi/n,ones(1,size(AxisR,1)));
    AxisX=AxisR.*sin(AxisTheta);
    AxisY=AxisR.*cos(AxisTheta);
    hold (ax,"on")
    box(ax,"off");
    set(ax,'xtick',[]);
    set(ax,'ytick',[]);
    set(ax,'ycolor',ax.Color);
    plot(ax,AxisX,AxisY,':k','Color',value{7},'LineWidth',1)
    plot(ax,AxisX',AxisY',':k','Color',value{7},'LineWidth',1)
    set(ax,'xcolor',[0,0,0]);
    
end



for ik=1:length(R)
hold (ax,"on")
'GİR'    
    try
        if (size(R{ik},1))~=(size(R{ik+1},1))
            error("Matrices that entered as cell subs ('"+ik+"' , '"+ik+1+"') are not same sized. Terminating!")
            return;
        end
    catch
        
    end
    
    
    
    R1=R{ik};
    try
    val=value{2};
    val=val{ik};
    catch
    val=value{2};
      
    end
    
    
    
    n=size(R1,2);
    m=size(R1,1);
    
    R1=[R1 R1(:,1)];
    [Theta,M]=meshgrid(2*pi/n*[0:n]+pi/n);
    X=R1.*sin(Theta);
    Y=R1.*cos(Theta);
    A=plot(ax,X',Y','LineWidth',2,'Color',value{1});
    %A(:).ButtonDownFcn=@PlotColor;
    MAXAXIS=maxx*1.2;
    %axis(ax,[-MAXAXIS MAXAXIS -MAXAXIS MAXAXIS]);
    axis (ax,"equal")
    
    if ~value{5}
    
        LableTheta=2*pi/n*[0:n-1]+pi/n;
        LableR=MAXAXIS;
        LableX=LableR.*sin(LableTheta);
        LableY=LableR.*cos(LableTheta);
        
        for i=1:length(Labels) 
           
            LableX(i)
            if LableX(i)>maxx/100
            tx=text(ax,LableX(i), LableY(i),Labels{i}, 'FontSize',14,'Color',value{7},'HorizontalAlignment','left','Rotation',0);
            elseif LableX(i)<0
            tx=text(ax,LableX(i), LableY(i),Labels{i}, 'FontSize',14,'Color',value{7},'HorizontalAlignment','right','Rotation',0);
            
            elseif LableX(i)<maxx/100
                
            tx=text(ax,LableX(i), LableY(i),Labels{i}, 'FontSize',14,'Color',value{7},'HorizontalAlignment','center','Rotation',0);
                
            end
            tx.ButtonDownFcn=@textHandler;
        end
    end
    
    
    
    for i=1:m
        
        set(A(i),'Color',val);
        
    end
    
    
    if num2str(value{2})~="None"
       
        F=fill(ax,X(i,:),Y(i,:),value{2},'LineStyle','none');
        set(F,'FaceAlpha',0.3);
        F.ButtonDownFcn=@FillColor;
    end
   

end
hold (ax,"on");
ylim(ax,[-1.3*maxx,maxx*1.3 ]);
xlim(ax,[-1.3*maxx,maxx*1.3 ]);

end
