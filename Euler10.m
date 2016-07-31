function [ sum ] = Euler10( )
%Problem 10
%   Find the sum of all the primes below two million.
sum = 2;
for i=3:2:1999999
   if isprime(i) == 1
       sum = sum + i;
   end
end
%format long
sprintf('Answer is: %16.f', sum)

end

