function x0 = newton_raphson()
clear
clc
x0=0.1;
iter = 0;

while abs(f(x0)) > 1e-6
    
    iter= iter+1
    x1 = x0 - f(x0)/fprime(x0);
    
    x0 = x1;
    
end

function out = f(in)
out = in^2-1; %% x=1 leads to y=0

function out = fprime(in)
out = 2*in;

