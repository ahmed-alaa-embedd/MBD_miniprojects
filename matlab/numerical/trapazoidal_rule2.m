%I=h[0.5[f(x0)+f(xn)]+sum from i:n-1 *f(xi)]
clear
clc

f=@(x)x*sin(x);
x0=1;
xn=10;
n=9; %no. of division
h=(xn-x0)/n;

s=0.5*(f(x0)+f(xn));

for i=1:(n-1)
   
    s=s+(x0+i*h)
end
result=h*s