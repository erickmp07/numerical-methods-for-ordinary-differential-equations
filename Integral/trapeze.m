clear;
close;

a = 0;
b = 1;
m = 10;
h = (b - a) / m;
x = a : h : b;

% f = @(x) x./(1 + x.^2);
f = @(x) exp(x);
y = integral(f, a, b) 

trapeze = (1/2) * (f(a) + f(b));

for i = 2 : m
    trapeze = trapeze + f(x(i));
end
trapeze = h * trapeze