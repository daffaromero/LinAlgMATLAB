A = [-3 1 -3; -8 3 -6; 2 -1 2]
x = zeros(3)
[m,n] = size(A)
p = poly(A)  %characteristic polynomial
manualeig = roots(p) %getting eigenvalues
for i = 1:m
    x = A - manualeig(i)*eye(3) %eye(n)=identity matrix of size nxn
    rref(x)
    v = null(x)  %nullspace of x = eigenvector of A
end

%check results
[V,D] = eig(A)