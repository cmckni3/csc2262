function [x, count] = LU_Decomp()

count = 0;
Alu = [1,1,-1;1,1,-1;-2,3,2];
n = length(Alu);
%A=[1 1 -1; 1 2 -2; -2 1 1];
b = [1;1;2];
%x = [1;2;2];
x = zeros(length(Alu));

g = zeros(length(Alu));
alpha = zeros(length(Alu));
B = zeros(length(Alu));
for i=1:n
    for j=1:n
        if (i == j)
            B(i,j) = Alu(i,j);
            count = count + 1;
        end
    end
for i=1:n
    for j=2:n
        if (B(i,j-1) ~= 0)
            alpha(i,j) = Alu(i,j)/B(i,j-1);
            count = count + 1;
        end
    end
end

x=zeros(n,1);
x(n)=b(n)/Alu(n,n);
for i=n-1:-1:1 %% row wise upwards
    x(i)= (b(i) - Alu(i,i+1:n)*x(i+1:n))/Alu(i,i); % dot product of row and column vector
    count = count + 2;
end

end