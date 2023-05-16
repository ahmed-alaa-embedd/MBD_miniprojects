%I=h[0.5[f(x0)+f(xn)]+sum from i:n-1 *f(xi)]
clear
clc

f=@(x)4*x^2+5*x+2;
x0=2;
xn=5;
n=100; %no. of division
h=(xn-x0)/n;

s=0.5*(f(x0)+f(xn));

for i=1:(n-1)
   
    s=s+f(x0+i*h)
end
result=h*s