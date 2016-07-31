function [ p ] = Euler7( n )
%Problem 7
%   What is the 10 001st prime number?
%Example input: n= Euler7(10001)
counter = 0;
for p=1:1e8
     if isprime(p)== 1
         counter = counter + 1;
         if counter == n
             break;
         end
     end
end


end %end of function

