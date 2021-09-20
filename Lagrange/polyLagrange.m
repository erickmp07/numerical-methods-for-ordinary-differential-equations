function [pi_n] = polyLagrange(a, b, n, f)

    dx = (b - a) / n;
    x = a : dx : b;
    y = f(x);
    syms z;
    
    polySum = 0;
    
    for i = 1: n+1
        li = 1;
        for j = 1 : n+1
            if j ~= i
                li = li * (z - x(j)) / (x(i) - x(j));
            end
        end
        polySum = polySum + li * y(i);
            
    end

    pi_n = matlabFunction(polySum);
end

