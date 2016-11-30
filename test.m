angle = linspace(0,2*pi,50);
x = cos(angle);
y = cos(angle) + 1;
zx = 0*angle;
zy = 0*angle + 1;
fig1 = scatter3(angle, x, zx, 10, 'r', 'filled');
hold on;
fig2 = scatter3(angle, y, zy, 10, 'b', 'filled');
icpTest(angle, x, zx, angle, y, zy, 50, 50);