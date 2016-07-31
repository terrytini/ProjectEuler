function [ output_args ] = Euler12b()
%Username: tcigvl
%His implementation of PE Problem 12
clear,clc;
tic;
n=1;
d=1;
nn=1;
while length(d)<250
    n=n+1;
    nn=nn+n;
    d=1:sqrt(nn);
    d=d(mod(nn,d)==0);
end
nn
toc;

end

