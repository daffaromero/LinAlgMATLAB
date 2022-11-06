A = magic(3)
[V,D] = eig(A)

% diagonalization A = V * D * V^-1
Vinv = inv(V)
A_dia = V * D * Vinv 

% computing A^k
A4 = A^4

% checking with A^k = V * D^k * V^-1
A4_dia = V * D^4 * Vinv
