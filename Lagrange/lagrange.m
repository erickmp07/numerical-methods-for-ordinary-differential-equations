function y = lagrange(x, pointX, pointY)
%
%      lagrange() approximates a point-defined function using the Lagrange polynomial interpolation
%
%      lagrange(x, pointX, pointY) approximates the function definited by the points:
%      P1 = (pointX(1), pointY(1)), P2 = (pointX(2), pointY(2)), ..., Pn = (pointX(n), pointY(n))
%      and calculate it in each elements of x
%
%      If pointX and pointY have different number of elements the function will return the NaN value
%

n = size(pointX, 2);
L = ones(n, size(x, 2));
if (size(pointX, 2) ~= size(pointY, 2))
   fprintf(1, '\nERROR!\npointX and pointY must have the same number of elements\n');
   y = NaN;
else
   for i = 1 : n
      for j = 1 : n
         if (i ~= j)
            L(i, :) = L(i, :) .* (x - pointX(j)) / (pointX(i) - pointX(j));
         end
      end
   end
   
   y = 0;
   for i = 1 : n
      y = y + pointY(i) * L(i, :);
   end
end
