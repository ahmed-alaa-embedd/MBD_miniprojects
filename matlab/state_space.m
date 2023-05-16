%state space and TF
clear
clc

A=[0,1,0;0,0,1;-10,-6,-5]
B=[0;0;1]
C=[1,0,0]
D=[0]

Sys=ss(A,B,C,D) %make state space with that matrix

[num,den]=ss2tf(Sys.a,Sys.b,Sys.c,Sys.d) %change state space to transfer function

h=tf(num,den) %make tranfer function
step(h) %graph step response of TF 
Sys.A %to call matrix A capital or small 