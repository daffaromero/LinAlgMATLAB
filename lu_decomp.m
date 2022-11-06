%LU factorization
A = rand(3)
[L,U] = lu(A)
[L,U,P] = lu(A) % also returns permutation matrix