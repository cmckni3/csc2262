% Chris McKnight
% Run of sqrt(x) calculations
a = 0;
b = 1;
s2 =  simps2(a, b, 2)
s4 =  simps2(a, b, 4)
s8 =  simps2(a, b, 8)
s16 = simps2(a, b, 16)
s32 = simps2(a, b, 32)
s64 = simps2(a, b, 64)

num = s32 - s16;
den = s64 - s32;
p = log(num / den)/log(2)
if (a ~= 0)
    corrected = intval - h^4/180*(3/8)*[b^(-5/2) - a^(-5/2)]
else
    rich = richardson(a, b, s32, s64, p)
end