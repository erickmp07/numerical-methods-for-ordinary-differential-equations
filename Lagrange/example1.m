x = linspace(0, 1);
y = exp(x);

xApproximate = [0, 1/2, 1];

yApproximate = lagrange(xApproximate, x, y);

plot(x, y, '.', xApproximate, yApproximate, '-');