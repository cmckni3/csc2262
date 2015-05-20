function val = GaussS()
format long;
x = [0; 0; 0; 0]
X = [5; -3; -7; 9]
x0 = x;
A = [4,-1,-1,0; -1,4,0,-1;-1,0,4,-1;0,-1,-1,4]
b = [5; -3; -7; 9]
count = 0;
n = length(b)

E = 1;
while (count < 27)
    x(1) = (b(1)-A(1,2:n)*x0(2:n))/A(1,1);
    for i=2:n-1
        x(i) = (b(i)-A(i,1:i-1)*x(1:i-1) ...
                -A(i,i+1:n)*x0(i+1:n))/A(i,i);
    end
x(n) = (b(n)-A(n,1:n-1)*x(1:n-1))/A(n,n);
E = norm(x-x0, inf)/(norm(x,inf))
x0 = x
count = count + 1
end

end