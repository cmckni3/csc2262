function intval = simps(a,b,n )
% Chris McKnight
% Approximates area of 4/(1 + x^2) from a to b using simpson's rule
format long;
h=(b-a)/n;
x=zeros(1,n+1);
f=zeros(1,n+1); % store f(x(i))
c=zeros(1,n+1); % c(i) is coeff of f(x(i)) in the formula

for i=1:n+1
    x(i)=a +(i-1)*h;
    c(i)=2;
    f(i)= 4/(1+x(i)^2);  % here is hard coded function
end
for i=2:2:n
    c(i)=4;
end
c(1) = 1;
c(n+1) = 1;
intval = (h/3)*(f*c');

error = abs(4*sqrt(2)/2 - intval);
end