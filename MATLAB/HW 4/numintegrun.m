% Chris McKnight
% Run of custom numerical integration of 1/(1+x) using odd and even rules
% Even: a +(i - 1 + sqrt(3)/3)*h
% Odd: a + (i - sqrt(3)/3)*h
a = 0;
b = 1;
N2   = numintegration(a, b, 2)
N4   = numintegration(a, b, 4)
N8   = numintegration(a, b, 8)
N16  = numintegration(a, b, 16)
N32  = numintegration(a, b, 32)
N64  = numintegration(a, b, 64)
N128 = numintegration(a, b, 128)
N256 = numintegration(a, b, 256)

num = N32 - N16;
den = N64 - N32;
pN = log(num / den)/log(2)

CN2   = CN(a, b, N2, N4, p)
CN4   = CN(a, b, N4, N8, p)
CN8   = CN(a, b, N8, N16, p)
CN16  = CN(a, b, N16, N32, p)
CN32  = CN(a, b, N32, N64, p)
CN64  = CN(a, b, N64, N128, p)
CN128 = CN(a, b, N128, N256, p)

num = CN64 - CN32;
den = CN128 - CN64;
pCN = log(num / den)/log(2)