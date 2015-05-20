function value = differentiate(x)
% Chris McKnight
% Numerically differentiate sin(x)
format long;
f = zeros(1, 20);
e = zeros(1, 20);
for h=.1:.1:1
    h2 = floor(h*10);
    f(h2) = evaluate(x, h);
    e(h2) = abs(cos(x) - f(h2));
end

for h=-1:.1:-.1
    h2 = abs(floor(h*10)) + 10;
    f(h2) = evaluate(x, h);
    e(h2) = abs(cos(x) - f(h2));
end
value = f;
e = e

end

function eval = evaluate(x, h)
    eval = [(1/2)*sin(x + 2*h) + (-1/2)*sin(x + h) - (-1/2)*sin(x - h) - (1/2)*sin(x - 2*h)] / h;
end