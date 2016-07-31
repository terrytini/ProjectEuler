function [ sum ] = Euler2(a,b)
%Problem 2
%  By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
%Objective: find the sum of the even-valued terms.
%Input: a = first number
%       b = second number
c = a + b;
sum = 0;
if mod(b,2) == 0
    sum = sum + b;
end
if mod(a,2) == 0
    sum = sum + a;
end
while c < 4000000
    old_c = c;
    c = c + b;
    a = b;
    b = old_c;
    if mod(c,2) == 0
        sum = sum + c;
        c;
    end
end %of while loop

end

