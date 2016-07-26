%% Plot in 2D
[xx, yy] = meshgrid([-2:0.5:2]);
Ke = 9e9;
Ex = -xx./(xx.^2+yy.^2).^(3/2);
Ey = -yy./(xx.^2+yy.^2).^(3/2);
L = sqrt(Ex.^2 + Ey.^2);

F1 = figure(1)
subplot(2,2,1)
F = quiver(xx, yy, Ex./L, Ey./L, 'color','red','LineWidth',2.0)
title('Campo Electrico normalizado')
grid on
subplot(2,2,2)
F = quiver(xx, yy, Ex, Ey, 'color','red','LineWidth',2.0)
title('Campo Electrico')
grid on
subplot(2,2,3)
F = quiver(xx, yy, -Ex./L, -Ey./L, 'color','blue','LineWidth',2.0)
title('Campo Electrico normalizado')
grid on
subplot(2,2,4)
F = quiver(xx, yy, -Ex, -Ey, 'color','blue','LineWidth',2.0)
title('Campo Electrico')
grid on


%% Plot in 3D
[x, y, z] = meshgrid([-2:0.5:2]);
Ke = 9e9;
Ex = -x./(x.^2+y.^2+z.^2).^(3/2);
Ey = -y./(x.^2+y.^2+z.^2).^(3/2);
Ez = -z./(x.^2+y.^2+z.^2).^(3/2);
L = sqrt(Ex.^2 + Ey.^2 +  Ez.^2);

F = figure(2)
subplot(2,2,1)
F = quiver3(x, y, z, Ex./L, Ey./L, Ez./L, 'color', 'red', 'LineWidth', 2.0)
grid on
subplot(2,2,2)
F = quiver3(x, y, z, Ex, Ey, Ez, 'color', 'red', 'LineWidth', 2.0)
grid on
subplot(2,2,3)
F = quiver3(x, y, z, -Ex./L, -Ey./L, -Ez./L, 'color', 'blue', 'LineWidth', 2.0)
grid on
subplot(2,2,4)
F = quiver3(x, y, z, -Ex, -Ey, -Ez, 'color', 'blue', 'LineWidth', 2.0)
grid on