A=[1,3;3,1]
B=[1,1;0,0]

[m,n] = size(A);

%% Check if A and B are the same matrix
if isequal(A,B)
    disp('Matrices are similar')
    return
end

%% Check if A and/or B is zero matrices (zero matrix is only similar to itself)
isZero = [isequal(A,zeros(m)),isequal(B,zeros(m))];
if isZero(1) ~= isZero(2) % ~= sama kayak !=
    disp('Matrices are not similar')
    return
end

%% Check if A and/or B is k*I (remember family-1 from w6)
isIdentity = [isequal(A/A(1,1),eye(m)),isequal(B/B(1,1),eye(m))];
if isIdentity(1) ~= isIdentity(2) || (isIdentity(1) == true && isIdentity(2) == true)
    disp('Matrices are not similar')
    return
end

%% Check if eigenvalues of A and B are the same
% If they are the same, their Jordan Form are the same, which means they
% are similar
A=sym(A);
B=sym(B);
eigenvalues = [sort(eig(A),'desc')';sort(eig(B),'desc')'];
if ~isequal(eigenvalues(1,:),eigenvalues(2,:))
    disp('Matrices are not similar')
    return
end

disp('Matrices are similar')