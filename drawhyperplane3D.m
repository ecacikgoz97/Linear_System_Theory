% By Emre Can Açıkgöz

%% drawhyperplane3D(a, b) Function
% This drawhyperplane3D(a, b) function generate a 3D hyperplane for a given 
% a and b vectors with their normal vector.

function drawhyperplane3D(a, b)             % Define function

A = a';                                     % Takes Transpose of 3D vector A

x1 = (0:0.2:3);                             % Reasonable range for x1
[X1, X2] = meshgrid(x1);                    % Returns 2-D grid coordinates based on the
                                            % coordinates contained in vectors x and y.
                                            % X1 and X2 are matrices where each row
                                            % and colum are a copy of x1 respectively.
a1 = A(1,1);                                % Takes the value of first row first column value of A
a2 = A(1,2);                                % Takes the value of first row second column value of A
a3 = A(1,3);                                % Takes the the value of first row third column value of A

b1 = b(1,1);                                % Takes the value of first row first column value of B
b2 = b(2,1);                                % Takes the value of second row first column value of B
b3 = b(3,1);                                % Takes the value of third row first column value of B

X3 = (-a1*X1 + a1*b1 - a2*X2 +...           % Find X2 for the formula of a'(x-b)=0 with the values of we initialized 
    a2*b2 + a3*b3) / (a3);                  % in lines 14-16 & 18-20 with the meshgrid in line 10

[U,V,W] = surfnorm(X1,X2,X3)                % Returns the components of the 3-D 
                                            % surface normal for the surface with components (X1,X2,X3). 
                                            % The normal is normalized to length 1.
quiver3(X1,X2,X3,U,V,W,...                  % Plots velocity vectors as arrows with components
    'r','LineWidth', 1.4)                   % (u,v,w) at the points (x,y,z).
hold on
surf(X1,X2,X3);                             % Plots the colored parametric surface defined by
                                            % four matrix arguments.
title("Hyperplane in R^3 with it's Normal");% Adds title                                          
xlabel('x_1')                               % Adds title to x label
ylabel('x_2')                               % Adds title to y label
zlabel('x_3')                               % Adds title to z label
end





