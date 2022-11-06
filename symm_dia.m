A = [1, 4, 6; 4 0 0; 6 0 0]
[V,D] = eig(A)
VT = transpose(V)
Vinv = inv(V)
A_dia = V * D * VT