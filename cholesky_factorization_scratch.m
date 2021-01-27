function L = cholesky(A)
% This function Find the Lower Triangular L for the Cholesky Factorization
% of the given input matrix where: A = L^(1/2) * L^(H/2)

n = length(A);              % Find the dimension
L = zeros(n);               % Create Empty vector
for row = 1:n
    for col = 1:row
        A_sum = 0;          % Calculator of the Sums
        
        for j = 1:col-1
            A_sum = A_sum + (L(row,j) * L(col,j)'); % Column Operations for Block Diagonality
        end
        
        if row == col   
            L(row, col) = sqrt(A(row,row) - A_sum); % Find Diagonals
        else
            L(row, col) = 1/L(col,col) * (A(row,col) - A_sum); % Do matrix Operation Formula
        end
    end
end
end
