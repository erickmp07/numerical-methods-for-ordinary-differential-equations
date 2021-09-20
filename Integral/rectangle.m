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

rect = 0;

for i = 1 : m
    xBar = (x(i) + x(i + 1)) / 2;
    rect = rect + f(xBar);
end

rect = h * rect
