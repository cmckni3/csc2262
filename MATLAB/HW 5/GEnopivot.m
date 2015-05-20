function [x, lu] = GEnopivot( A, b )
n=length(b);
for k=1:n-1  %% k stands for column being killed
    A(k+1:n,k)= A(k+1:n,k)/A(k,k);  %storing multipliers in A
    for i=k+1:n %% i is the row being operated
        A(i,k+1:n) = A(i,k+1:n) - A(i,k)*A(k,k+1:n);
    end
    b(k+1:n) = b(k+1:n)-A(k+1:n,k)*b(k);
end
%% start back substitution
x=zeros(n,1);
x(n)=b(n)/A(n,n);
for i=n-1:-1:1 %% row wise upwards
    x(i)= (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i); % dot product of row and column vector
end
lu=A;


end