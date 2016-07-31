function [ max ] = Euler3( num )
%Problem 3
%   What is the largest prime factor of the number 600851475143 ?

F = factor(num);
d = size(F);
max = F(1);
for i=1:d(2)
    if F(i)> max
        max = F(i);
    end
end%of for loop
end

