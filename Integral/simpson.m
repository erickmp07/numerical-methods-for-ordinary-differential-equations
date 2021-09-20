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

simpson = (f(a) + f(b));

for i = 2 : m
    if (mod(i, 2) == 0)
        simpson = simpson + 2 * f(x(i));
    else
        simpson = simpson + 4 * f(x(i));
    end
end
simpson = (h/3) * simpson