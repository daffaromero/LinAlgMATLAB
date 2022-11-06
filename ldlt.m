% SOURCE: https://www.mathworks.com/matlabcentral/fileexchange/47-ldlt
% Author: Brian Borchers

function [L,D]=ldlt(A)
n=size(A,1);
L=zeros(n,n);
for j=1:n
  if (j > 1)
    v(1:j-1) = L(j,1:j-1).*d(1:j-1);
    v(j)     = A(j,j) - L(j,1:j-1)*v(1:j-1)';
    d(j)     = v(j);
    if (j < n)
      L(j+1:n,j)=(A(j+1:n,j)-L(j+1:n,1:j-1)*v(1:j-1)')/v(j);
    end
  else
    v(1)=A(1,1);
    d(1)=v(1);
    L(2:n,1)=A(2:n,1)/v(1);    
  end
end
%

L=L+eye(n) %  Put d into a matrix.
D=diag(d)  %  Put ones on the diagonal of L.
L_tr = transpose(L)



