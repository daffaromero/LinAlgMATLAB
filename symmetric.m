% checking if symmetric (or not)
A = [1 4 6; 4 0 0; 6 0 0]
AT = transpose(A)
isequal(A, AT)    % matrix A dan AT itu equal
issymmetric(A)    % matlab has a built-in function 

%skew-symmetric?
A2 = [0 -1 -2; 1 0 -1; 2 1 0]
AT2 = transpose(A2)
minusA2 = A2 * (-1)
issymmetric(A2,"skew")  % built-in matlab function