clear 
clc 
close all

func= @(t)4*sin(t);
t=[0;0.1;5]
y=func(t);

%forward differance

for i=2:(length(t)-1)
    dy(i)=y(i+1)-y(i)/0.01;
end
plot(t,y);