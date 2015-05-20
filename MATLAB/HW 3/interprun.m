x = -4:4;
e = exp(1);
y = e.^-(x.^2);
xx = -4:.1:4;

dd = divdif(x,y);
yy = interp(x, dd, xx);

zz = e.^-(xx.^2);
error = e^-(2.5^2) - yy(2)
plot(xx, yy, xx, zz);