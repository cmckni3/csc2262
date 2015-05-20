function intval = numintegration(a,b,n )
% Chris McKnight
% Approximate 1/(1+x) using odd/even integration rule
format long;
h=(b-a)/n;
x=zeros(1,n+1);
f=zeros(1,n+1); % store f(x(i))
c=zeros(1,n+1); % c(i) is coeff of f(x(i)) in the formula

count = 0;
for i=1:n+1
    if (mod(count, 2) == 0)
        %even
        x(i)= a +(i - 1 + sqrt(3)/3)*h;
    else
        %odd
        x(i)= a + (i - sqrt(3)/3)*h;
    end
    c(i)=2;
    f(i)= 1/(1+x(i));  % here is hard coded function
    count = count + 1;
end
c(1) = 1;
c(n+1) = 1;
intval = (h/2)*(f*c');

error = abs(log(2) - intval)
end