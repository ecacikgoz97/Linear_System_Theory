function out = generaterandvec(N, R)
% This Function Generates N random vectors with the given Covariance
% Matrix R

dims = size(R);             % Calculate Dimensions
n = dims(1);                % Find the row dimension
Z = randn(n, N);            % N number of vector with dimension n

L = cholesky(R);            % Do Cholesky Factorization

Y = L * Z;                  % Find our Output

out = Y;                    % Specify Our output for return it in Main Source
end