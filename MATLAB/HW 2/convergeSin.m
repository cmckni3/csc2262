function root = convergeSin(x0)

format long;
count = 0;
while x0 ~= 0
    fx = f(x0);
    dfx = deriv(x0);
    if dfx == 0
        disp('Derivative is zero')
        return
    end
    x1 = x0 - fx/dfx;
    x0 = x1
    count = count + 1
end
root = x1;
count = count + 1
end
    
    
function value = f(x)
value = sin(x)-x;
end

function value =  deriv(x)
value = cos(x)-1;
end