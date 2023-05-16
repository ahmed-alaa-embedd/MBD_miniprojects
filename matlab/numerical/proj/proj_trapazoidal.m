clear
clc

y=@(x)x^2+3*x+2
x=0;
h=(6-2)/100;
y2=0;

for i=2+h:h:6-h
    
    x=i;
    y2=y(x)+y2;
end

y1=y(0);
y3=y(6);
trapazoid=(y1+2*y2+y3)*(h/2)