%DC motor
%dynamic model: di/dt=V/L-R*i/L-k*(seta)'/L
%               (seta)''=k*i/j-B(seta)'/j
%j:moment of inertia
%b:fraction coefficient
%k:motor constant
%R:resistance 
%L:inductance

clear
clc

j=0.025;
b=0.5;
k=0.05;
R=1;
L=0.05;