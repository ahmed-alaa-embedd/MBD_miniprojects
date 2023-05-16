
clear 
clc

p1=[1 0 0];
%p2=[1 5];
x=0:0.1:5  %add step to smooth the graph

y=polyval(p1,x)
plot(x,y) %to draw graph
%dm=conv(p1,p2) %multiply 2 function
%dd=deconv(dm,p1) %division 2 function
%polyval(p,x)  %solve function
%roots(p) %get roots