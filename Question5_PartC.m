%% Question5 Part(c)
% For Elec405
% By Emre Can Açıkgöz

clear;clc;                                 % Clear Workspace & Command Window
%% Pick the point [y1 = 1 ; y2 = 0] with negative definite Hessian and Plot it

x = -2:0.05:2;                                      % Creating Range for f(x)
y = -1:0.05:1;                                      % Creating Range for f_Q(x)

[x1, x2] = meshgrid(x);                             % Define meshgrid
[y1, y2] = meshgrid(y);                             % Define meshgrid

f1 = (4*x1.^2 - 1).*exp(-x1.^2 - x2.^2);            % Calculate f(x)

f2 = 3*exp(-1) + 2*exp(-1)*(y1+1) - 2*exp(-1) + ... % Calculate f_Q(x) for y1 = 1 and y2 = 0
    0.5*(-18*exp(-1)*(y1+1).^2 + 36*exp(-1)*(y1+1) ...
    - 18*exp(-1) - 6*exp(-1)*(y2).^2);

surf(x1,x2,f1, 'FaceColor', 'w', 'edgecolor','k')   % Plot f(x)
hold on
surf(y1+1,y2,f2, 'FaceColor', 'r')                  % Plot f_Q(x)
