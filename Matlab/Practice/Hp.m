theta = linspace(0, 2*pi);
y = linspace(0, 3, 100);
z = linspace(-1, 1, 100);
plot3(cos(theta), sin(theta), 0*theta);
hold on;
plot3(0*x, y, z);
grid on;
xlabel('x');
ylabel('y');
zlabel('z');