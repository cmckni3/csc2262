function root = convergeSin2(x0)

format long;
error = 1;
count = 0;
while abs(error) > 1E-6
    fx = f(x0);
    dfx = deriv(x0);
    if dfx == 0
        disp('Derivative is zero')
        return
    end
    x1 = x0 - fx/dfx;
    error = x1 - x0;
    lambda = abs(x1/x0);
    x0 = x1
    count = count + 1;
end
root = x1;
lambda = lambda
end
    
    
function value = f(x)
format long;
value = x - sin(x);
end

function value =  deriv(x)
format long;
value = 1 - cos(x);
end