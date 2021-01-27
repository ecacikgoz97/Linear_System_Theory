%% Question 5
% For Elec405
% Emre Can Acikgoz / 64392
clear;clc;
%% Find Orthogonal Vectors
A = randn(10) + i*randn(10)      % Random Complex Matrix
H = (A + A')/2                   % Genarate Hermitian Matrix
                                 % Can be checked by dot(V(:,i), V(:,i))=0
                                 % Also, all Eigenvalues are Real
[V, D] = eig(H)                  % Find Eigenvalues and Eigenvectors of 
                                 % Hermitian Matrix
%% Find Unitary Matrix
% Since H is Hermitian, its Eigenvectors are orthogonal. In "Find
% Orthogonal Vectors" part, I find orthogonal vector by using the
% eigenvectors of the Hermitian Matrix. Then, in this cell, I normalized 
% each of them in order to make the Unitary Matrix.

for i = 1:10                     
    U(:,i) = V(:,i) / sqrt(V(:,i)' * V(:,i)); % Normalize each Eigenvector
                                              % in order to make Unitary
                                              % Matrix
end


I = U * U'               % Checking for Unitary Matrix by U * U' = Identity