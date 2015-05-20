function root = run(x0)
format long;
x = pi/4;
count = 0;
while count < 300
    x = sin(x)
    count = count + 1
end
root = x
end