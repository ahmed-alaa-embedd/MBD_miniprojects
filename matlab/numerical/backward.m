clear 
clc 
close all

func= @(t)4*sin(t);
t=[0;0.1;5]
y=func(t);

%backward differance

for i=2:length(t)
    dy(i)=y(i)-y(i-1)/0.1;
end
plot(t,y);