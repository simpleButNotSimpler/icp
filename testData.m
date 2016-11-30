angle = linspace(0,50,50);
x = angle + 1;
y = 2*angle + 1;
zx = 0*angle;
zy = 0*angle + 1;


[a, b, c, er] = setTransform(angle, x, zx, angle, y, zy, 50, 1);
%{
fileID = fopen('dataScale.txt','w');
fprintf(fileID,'%7.2f %7.2f %7.2f %7.2f\n', a(1), a(2), a(3), er);
fprintf(fileID,'%7.2f %7.2f %7.2f %7.2f\n', b(1), b(2), b(3), er);
% for i=1:50
%    fprintf(fileID,'%7.2f %7.2f %7.2f %7.2f\n', a(i), b(i), c(i), er);
% end
fclose(fileID);

[a, b, c, er] = setTransform(angle, x, zx, angle, y, zy, 50, 0);

fileID = fopen('dataNoScale.txt','w');
fprintf(fileID,'%7.2f %7.2f %7.2f %7.2f\n', a(1), a(2), a(3), er);
fprintf(fileID,'%7.2f %7.2f %7.2f %7.2f\n', b(1), b(2), b(3), er);
% for i=1:50
%    fprintf(fileID,'%7.2f %7.2f %7.2f %7.2f\n', a(i), b(i), c(i), er);
% end
fclose(fileID);
%}