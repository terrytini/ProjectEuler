function [tri_num] = Euler12()
%Problem 12
%   What is the value of the first triangle number to have over five hundred divisors?
%Note: takes a long time to run, may need to optimize
tri_num = 0;
for i=1:100000000
    tri_num = tri_num + i
    this_size = size(divisors(tri_num));
    if this_size(2) > 500
        break
    end
end
fprintf('Answer: %f', tri_num);

end

