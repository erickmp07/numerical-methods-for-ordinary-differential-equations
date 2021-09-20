%input
a = -5;
b = 5;
n = 3;
dx = (b-a) / n;

x = a : dx: b;
f = @(x) 1./ (1 + x.^2);
y = f(x);

g = 1;

for i=1:n
    pi_npiece = polyLagrange(x(i), x(i+1), g, f);
    
    ntil = 100;
    dz = (x(i + 1) - x(i)) / ntil;
    z = x(i) : dz : x(i + 1);
    
    if (g == 1) && (mod(n, 2) == 1) && (i == (fix(n / 2) + 1))
        plot (z, pi_npiece() + z * 0, 'r')
        hold on
        error(i) = max(abs(f(z) - pi_npiece()));
    else        
        plot (z, pi_npiece(z), 'r')
        hold on
        error(i) = max(abs(f(z) - pi_npiece(z)));
    end
end

errorTotal = max(error)

interval = a : 0.01 : b;
plot (interval, f(interval),'b')
