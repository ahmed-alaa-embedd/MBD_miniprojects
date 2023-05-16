%proj2
%its better to use pulse than step input
%dynamic model: X2''=(-b(x2'-x1')-k2(x2-X1))1/m2
%               X1''=(-b(X1'-X2')-k1X1-k2(X1-X2))1/m1
clear
clc

m1=40;
m2=416.5;
k1=226000;
k2=2325;
b=200;
