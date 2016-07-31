function [ num ] = Euler5 ()
%Problem 5
%   What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
% example call: n = Euler5()
num = lcm(1,2);
    for i=3:20
        num = lcm(num,i);
    end
end

