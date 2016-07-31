function [ diff ] = Euler6( n )
%Problem 6
%   Find the difference between the sum of the squares of the first 
%   one hundred natural numbers and the square of the sum.
    sum1 = 0;
    sum2 = 0;
    for i=1:n
        sum1 = sum1 + i^2;
        sum2 = sum2 + i;
    end
    sum2 = sum2^2;
    diff = sum2 - sum1
end

