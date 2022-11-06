% positive definite matrix (method 1 - det & eig)
% A = magic(3)
A = [2 -1 0; -1 2 -1; 0 -1 2]
[m,n] = size(A);
check = issymmetric(A)
% check = isequal(A,AT)
% AT = transpose(A)
if check == 0
    error('Matrix is not symmetric. Positive definite tests are not performed')
else
    for i = 1:m
    detUL = det(A(1:i,1:i)) % upper-left determinant
    end
    [D] = eig(A)
end
isposdef = all(detUL > 0) && all(D > 0)
if isposdef == 1
    disp('Matrix is positive definite.')
else
    disp('Matrix is not positive definite.')
end