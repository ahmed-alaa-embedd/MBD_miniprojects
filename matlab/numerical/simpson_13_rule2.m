clear
clc

f=@(x)x*sin(x);
x0=3;
xn=10;
n=6;
h=(xn-x0)/n;
s=0;
for i=1:(n-1)
    x1=x0+(2*i)*h;
    x2=x0+(2*i+1)*h;
    x3=x0+(2*i+2)*h;
    s=s+f(x1)+4*f(x2)+f(x3);
end
result=h/3*s