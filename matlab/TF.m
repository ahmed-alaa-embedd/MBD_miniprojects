clc
clear 

G=tf([34],[1,10,34])
%td=tf([1],[1,12,10])
%G2=tf([11,20],[1,12,20])
%td2=tf([1],[1,12,20])
%G3=tf([11,100],[1,12,100])
%td3=tf([1],[1,12,100])
step(G)
%hold
%step(G2)
%step(td)
%step(G3)
%step(td2)
%step(td3)

