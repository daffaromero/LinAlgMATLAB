% positive definite matrix (method 2 - cholesky)
% A = magic(3)
A = [2 -1 0; -1 2 -1; 0 -1 2]
[m,n] = size(A);
check = issymmetric(A)
% check = isequal(A,AT)
% AT = transpose(A)
if check == 0
    error('Matrix is not symmetric. Positive definite tests are not performed')
else
    try [R,flag] = chol(A)
        disp('Matrix is positive definite.')
    catch ME
        disp('Matrix is not positive definite.')
    end
end
isposdef = not(flag)