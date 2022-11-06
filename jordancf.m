A = [0 1 0 0; 0 0 0 -1; -1 0 0 0; 0 -2 -1 0]
A = sym(A);
[M,J] = jordan(A)
Minv = inv(M)