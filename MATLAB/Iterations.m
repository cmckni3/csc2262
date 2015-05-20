function val = Iterations()
format long;
x = [0; 0; 0; 0]
x0 = x;
X = [5; -3; -7; 9]
A = [4,-1,-1,0; -1,4,0,-1;-1,0,4,-1;0,-1,-1,4]
b = [5; -3; -7; 9]
count = 0;
diagA = diag(A);
A = A - diag(diagA);
n = length(b);

E = 1;
while (count < 27)
    %x(1)=(1/4)*[5+x(2)+x(3)];
    %x(2)=(1/4)*[-3+x(1)+x(4)];
    %x(3)=(1/4)*[-7+x(1)+x(4)];
    %x(4)=(1/4)*[9+x(2)+x(3)];
    x = (b-A*x0) ./diagA;
    E = norm(x-x0, inf)/(norm(x,inf))
    x0 = x;
    count = count + 1
end
x = x
val = count;
end