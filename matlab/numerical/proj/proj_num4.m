clear
clc

f=@(x)x^2+3*x+2
h=0.01
x=0

%backward
for i=0.01:0.01:0.7
    x=1;
    backward=(f(x)-f(x-0.01))/h;
end
backward_result=backward

%forward
for i=0:0.01:6.99
    x=i;
    forward=(f(x+0.01)-f(x))/h;
end

forward_result=forward

%Central
for i=0:0.01:7
    x=i;
    central=(f(x+0.01)-f(x-0.01))/(2*h);
end
central_resut=central
    

