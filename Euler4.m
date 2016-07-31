function [ max ] = Euler4()
%Problem 4
%   Objective: Find the largest palindrome made from the product of two 3-digit numbers
    max = 0;
    for i=100:999
       for j=100:999
           prod = i * j;
           if prod == str2num(fliplr(num2str(prod)))
             if prod > max
                max = prod;
             end
           end
       end
    end
end

