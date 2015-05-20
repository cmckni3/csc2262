function root = convergeTan(x0)

format long;
count = 0;
while count < 10
    fx = f(x0);
    dfx = deriv(x0);
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
    
    
function value = f(x)
value = tan(x)-x;
end

function value =  deriv(x)
value = (sec(x)*sec(x)) - 1;
end