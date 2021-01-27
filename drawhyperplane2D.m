%% Question #4 Part(c): drawhyperplane3D
% Prepared for ELEC405
% By Emre Can Açıkgöz
% 64392

%% drawhyperplane2D(a, b) Function
% This drawhyperplane2D(a, b) function generate a 2D hyperplane for a given 
% a and b vectors with the normal of our hyperplane.

function drawhyperplane2D(a, b)             % Define function

A = a';                                     % Takes Transpose of 2D vector A
x1 = (-3:0.2:3);                            % Reasonable range for x1

a1 = A(1,1);                                % Takes the first row first column value of A
a2 = A(1,2);                                % Takes the first row second column value of A 
b1 = b(1,1);                                % Takes the first row first column value of B
b2 = b(2,1);                                % Takes the second row first column value of B

x2 = (a1*b1 + a2*b2 - a1*x1) / a2;          % Find x2 for the formula of a'(x-b) as we initialized 
                                            % the values at lines 13-16

x_N = (-2:0.2:0);                           % Define the Normal Vector range
y_N = (a1*b1 + a2*b2 + x_N*a2*a2*a1) / a2;  % Formalized our line's Normal


figure (1)

grid                                        % Makes grid
line(x1, x2);                               % Plot our line based on x1 and x2
hold on
plot(x_N, y_N, 'r-', 'LineWidth', 3);       % Plot our Normal with color red and width 3
title("Hyperplane in R^2 with it's Normal");% Adds title
xlabel('x_1');                              % Adds title to x label
ylabel('x_2');                              % Adds title to y label
legend('Hyperplane', 'Normal',...           % Add legend to plot
    'Location','northwest');
axis equal                                  % Makes equal axis

end







