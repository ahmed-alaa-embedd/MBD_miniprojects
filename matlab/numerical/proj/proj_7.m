clear
clc

f=@(x)x*sin(x);
x0=2;
xn=6;
n=100;
h=(xn-x0)/n;
s=0;
for i=0:(n-1)
    x1=x0+(3*i)*h;
    x2=x0+(3*i+1)*h;
    x3=x0+(3*i+2)*h;
    x4=x0+(3*i+3)*h;
    s=s+f(x1)+3*f(x2)+3*f(x3)+f(x4);
end
result=(3*h/8)*s