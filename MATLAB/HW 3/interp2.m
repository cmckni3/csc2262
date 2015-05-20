function xeval = interp2 (x_nodes, y_values, deriv)

m = length (x_nodes);
z = zeros (1, 2*m);
f = zeros (1, 2*m);

z(1:2:2*m-1) = x_nodes;
z(2:2:2*m)   = x_nodes;
f(1)         = y_values(1);
f(3:2:2*m-1) = (y_values(2:m) - y_values(1:m-1)) ./ (x_nodes(2:m) - x_nodes(1:m-1));
f(2:2:2*m)   = deriv;

for i = 3:2*m
    f(i:2*m) = (f(i:2*m) - f(i-1:2*m-1)) ./ (z(i:2*m) - z(1:2*m-i+1));
end;

xeval = zeros (1, 2*m);
p = [1];
for i = 1:2*m
    xeval = xeval + f(i)*[zeros(1,2*m-i) p];
	p = conv (p, [1 -z(i)]);
end;