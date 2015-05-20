% Chris McKnight
% Run of 4/(1+x^2) calculations
a = 0;
b = 1;
s2 =  simps(a, b, 2)
s4 =  simps(a, b, 4)
s8 =  simps(a, b, 8)
s16 = simps(a, b, 16)
s32 = simps(a, b, 32)
s64 = simps(a, b, 64)

num = s32 - s16;
den = s64 - s32;
p = log(num / den)/log(2)
if (a ~= 0)
    eval = [(-6*b^2*(1+b^2)^(-4)+(1+b)*(1+b^2)^-3) - (-6*a^2*(1+a^2)^(-4)+(1+a)*(1+a^2)^-3)]
    corrected = intval - h^4/180*8*eval
else
    rich = richardson(a, b, s32, s64, p)
end