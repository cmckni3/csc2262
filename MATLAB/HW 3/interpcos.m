x = -4:4;
y = cos(x)
xx = -4:.1:4;

dd = divdif(x,y);
yy = interp(x, dd, xx);

zz = cos(xx);
error = cos(2.5) - yy(2)
plot(xx, yy, xx, zz);