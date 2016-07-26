%% Plot in 2D, tested in Octave 
% Initial grid in 2D
a = -10;
b = 10;
dxy = 1;
[x, y] = meshgrid([a:dxy:b]);

% Initial values for fields and universal constants
Ex = zeros(size(meshgrid([a:dxy:b])));
Ey = zeros(size(meshgrid([a:dxy:b])));
Ke = 9e9;

% Charge distribution and N is the number of charges
% [q, x, y], q value and x, y position
Q = [1e-9, 0, 0; -2e-9, 1, 0];
N = size(Q, 1);

% Superpostion principle
for i = 1:N
  Ex = Ex + Q(i, 1)*Ke*((x - Q(i, 2))./((x - Q(i, 2)).^2 + (y - Q(i, 3)).^2).^(3/2));
  Ey = Ey + Q(i, 1)*Ke*((y - Q(i, 3))./((x - Q(i, 2)).^2 + (y - Q(i, 3)).^2).^(3/2));
end

% Calculate the length of vector
L = sqrt(Ex.^2 + Ey.^2);

% Plot Field representation
F1 = figure(1)
subplot(1,2,1)
F = quiver(x, y, Ex./L, Ey./L, 'color','blue','LineWidth',3.0)
title('Campo Electrico normalizado')
grid on
subplot(1,2,2)
F = quiver(x, y, Ex, Ey, 'color','blue','LineWidth',3.0)
title('Campo Electrico')
grid on
