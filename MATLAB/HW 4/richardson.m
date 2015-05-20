% Chris McKnight
% Calculates richardson extrapolation for problem 1 and problem 2
function value = richardson(a, b, sn, s2n, p)
    format long;
    value = 1/(2^p - 1)*((2^p*s2n) - sn);
end