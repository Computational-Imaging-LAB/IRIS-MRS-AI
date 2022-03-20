% line plot
x1=1:10;
y1=1:10;
%bar 1 data
xb1 = [2 5 7];
yb1 = [4 4 4]; 
%bar 2 data
xb2 = [1 2 9];
yb2 = [2 2 2];
figure
p1 = plot(x1,y1);
hold on
b1 = plot([xb1; xb1], [yb1-2; yb1],'-b');
b2 = plot([xb2; xb2], [yb2-4; yb2],'-r');
axis([0  10    ylim])