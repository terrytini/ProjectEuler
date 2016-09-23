function [ x ] = Euler14( max_num )
%Project Euler 14
%   Which starting number, under one million, produces the longest chain?
% Collatz: n ? n/2 (n is even)
%           n ? 3n + 1 (n is odd)

cache = zeros(max_num+1);

for i=1:max_num
    n=i;
    counter = 1;
    while n ~= 1
        if mod(n,2)==0
            n = n/2;
        else
            n = 3n+1;
        end
        counter = counter+1;
    end
    
    if 
    end
end

end

