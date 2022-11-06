A = [3 0 0; 0 2 1; 0 1 2]
[V,D] = eig(A)
VT = transpose(V)
Vinv = inv(V)
A_dia = V * D * VT