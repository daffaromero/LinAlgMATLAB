A = rand(3)
b = rand(3,1)  
[m,n] = size(A);  
z = zeros(m,1);
D = det(A)
Ainv = inv(A)

if A==0
    error('No Solution')
elseif D==0
    error('No Solution')
end

for i = 1:m
    B = A;
    B(:,i) = b;
    z(i) = det(B)/det(A);
end
[z]

%check results
x = A\b; % solve linear eq: Ax = b --> x = A\b
[x]