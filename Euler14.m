function [x] = Euler14( max_num )
%Project Euler 14
%   Which starting number, under one million, produces the longest chain?
% Collatz: n ? n/2 (n is even)
%           n ? 3n + 1 (n is odd)

cache = zeros(max_num+1,1);
max_count = [0, 0];
tic
for i=1:max_num
    n=i;
    counter = 1;
    while n ~= 1
        if n <= max_num+1
            if cache(n)~= 0
                %fprintf('Hit a number that was cached!: %i \n',n);
                counter = counter + cache(n);
                break;
            end
        end
        
        if mod(n,2)==0
            n = n/2;
        else
            n = 3*n+1;
        end
        
        counter = counter+1;
    end
    cache(i) = counter;
    fprintf('Number:%i | Collatz length:%i \n',i, counter);
    if max_count(2) < counter
        max_count(1) = i;
        max_count(2) = counter;
        %fprintf('New max!\n');
    end
end

x = max_count(1);
toc
end

