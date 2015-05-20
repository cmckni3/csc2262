function root = converge(x0, c)

format long;
count = 0;
while count < 10
    fx = f(x0, c);
    dfx = deriv(x0, c);
    if dfx == 0
        disp('Derivative is zero')
        return
    end
    x1 = x0 - fx/dfx;
    x0 = x1
    count = count + 1;
end
root = x1;
end
    
    
function value = f(x, c)
value = c*x^2 + x - c*9;
end

function value =  deriv(x, c)
value = c*2*x + 1;
end