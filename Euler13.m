function [ sum, A ] = Euler13( )
%Project Euler Proble 13
%   Detailed explanation goes hereWork out the first 
%   ten digits of the sum of the following one-hundred 50-digit numbers.

fileID = fopen('Euler13input.txt', 'r');
formatSpec = '%f %f %f %f %f';
sizeA = [5 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

overflow = 0;
sum = 0;
for i=5:-1:1
    sum = overflow;
    for j=1:100
        sum = sum + A(i,j);
    end
    fprintf('Sum for column %i is: %0.f\n', i, sum);
    if sum < 10000000000    %sum is 10 digits with no overflow
        overflow = 0;
    else
        overflow = floor(sum/10000000000);
    end
end

if overflow > 0
    shift = floor(log10(abs(overflow)+1)) + 1;
    sum = sum / (10^(shift));
end

fprintf('Answer for PE13: %.0f\n', sum)

end

