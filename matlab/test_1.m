%to cut a section from matrix
clear
clc
x=1:5
y=12
z=x+y
w=x*y

L=[z;w]

L1=L([1,2],[2,5])
L2=L([1,2],[1,4])
a1=L1*L2
a2=L1.*L2