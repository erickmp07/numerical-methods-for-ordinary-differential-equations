%input
a = 0;
b = 1;
n = 2;
dx = (b-a)/n;

x = a : dx: b;
f = @(x) exp(x);
y = f(x);

pi_n = polyLagrange(a, b, n, f)

ntil = 100;
dxtil = (b - a) / ntil;
xtil = a : dxtil : b;

error = max(abs(f(xtil) - pi_n(xtil)))

plot (xtil, f(xtil), 'r')

hold on

plot (xtil, pi_n(xtil), 'b') 