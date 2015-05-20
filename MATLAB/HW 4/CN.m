function value = CN(a, b, sn, s2n, p)
    value = 1/(2^p - 1)*((2^p*s2n) - sn);
    error = abs(log(2) - value)
end