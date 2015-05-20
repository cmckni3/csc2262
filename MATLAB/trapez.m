function intval = trapez(a,b,n )
h=(b-a)/n;
x=zeros(1,n+1);
f=zeros(1,n+1); % store f(x(i))
c=zeros(1,n+1); % c(i) is coeff of f(x(i)) in the formula

for i=1:n+1
    x(i)=a +(i-1)*h;
    c(i)=2;
    %if (x(i) ~= 0)
    f(i)= 1/(x(i)^2+1);  % here is hard coded function
    %end
end
c(1) = 1;
c(n+1) = 1;
intval = (h/2)*(f*c');

%eval = b*((log(b)/log(2))  - 1)
%error = abs(intval - eval)

end