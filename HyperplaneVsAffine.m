%% Question 8: What is a homework without a computational part?....
% Prepared fo Elec405
% By Emre Can Acikgoz
% 64392

clear;                                      % Clear Workspace          
clc;                                        % Clear Command Window
%%
x = -50:1:50;                               % Reasonable range for x                              
[X1,X2] = meshgrid(x);                      % Returns 2-D grid coordinates based on the
                                            % coordinates contained in vector x.
                                            % X1 and X2 are matrices where each row
                                            % and colum are a copy of x respectively.

A = [0.01 0.001; 0.001 0.01];               % Define A Matris

X3 = A(1,1)*X1.^2 + A(1,2)*X1.*X2...        % Formula for X3 
    + A(2,1)*X1.*X2 + A(2,2)*X2.^2;         

figure (1)
surf(X1,X2,X3);                             % Plots the colored parametric surface 
title("Hyperplane in R^3 with it's Affine");% Adds title                                          
xlabel('x_1')                               % Adds title to x label
ylabel('x_2')                               % Adds title to y label
zlabel('x_3')                               % Adds title to z label
hold on
%%
x0 = [25; 0];                               % Define x_0 vector
Aff_x = -50:1:50;                           % Reasonable range for Affine x 

[Aff_X1, Aff_X2] = meshgrid(Aff_x);         % Meshgrid same procedur as line on
Aff_X3 = [A(1,1)*(x0(1)^2)]...              % By equation(7) that gives Affine
    + [(2*A(1,1)*x0(1))*Aff_X1]...          % Approximation in our Homework#1
    - [50*A(1,1)*x0(1)]...
    + [(A(2,1)+A(1,2))*x0(1)*Aff_X2]; 

surf(Aff_X1, Aff_X2, Aff_X3)                % Plots the colored parametric surface
