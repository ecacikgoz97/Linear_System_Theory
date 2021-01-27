%% Question3 Random Vector Generation..
% For Elec405
% By Emre Can Açıkgöz

clear;clc;                                    % Clear Workspace & Command Window
%% Generate N Random Vectors
N = 100000;                                   % Number of samples
R = [28 15+9i 2+21i; 15-9i 48 15-11i;...      % Covariance Matrix
    2-21i 15+11i 30]; 

out = generaterandvec(N, R);                  % my definedfunction which generates N 
                                              % random vectors with given Covariance Matrix R
%% Calculate the sample covariance matrix
% In this part I calculated the sample covariance matrix for the vector
% sequence generated using the given formula(3): ===> R_head = 1/N*sum(xi*xi')
R_head = zeros(3);                           % Empty Matrix
for i = 1:3
    for j = 1:3
        if i==j
            R_head(i,j) = 1/N*sum(out(i,j)*out(i,j)'); % Calculating it with the given Formula(3)
        end
    end
end

R_head_Alt = out*out';                        % R_head alternative method, by multiplying 
                                              % 3 by 100000 and 100000 by 3 
                                              % we will get 3 by 3 Covariance Matrix