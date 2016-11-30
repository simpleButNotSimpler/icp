angle = linspace(0,50,50);
x = angle + 1;
y = 2*angle + 1;
zx = 0*angle;
zy = 0*angle + 1;
fig1 = scatter3(angle, x, zx, 10, 'r', 'filled');
hold on;
fig2 = scatter3(angle, y, zy, 10, 'b', 'filled');
er = icpTest(angle, x, zx, angle, y, zy, 50, 100);

title (er);
xlabel ("X");
ylabel ("Y");
zlabel ("Z");
