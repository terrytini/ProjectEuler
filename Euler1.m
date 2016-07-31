function [sum] = Euler1(n)
%Problem 1
%   If we list all the natural numbers below 10 that are multiples of 3 or 5, 
%   we get 3, 5, 6 and 9. The sum of these multiples is 23.
% Objective: Find the sum of all the multiples of 3 or 5 below 1000.
sum = 0;

for i=1:n-1
    if mod(i,3) == 0
        sum = sum + i;
    else if mod(i,5) == 0
        sum = sum + i;
    end
end %of for loop

end

