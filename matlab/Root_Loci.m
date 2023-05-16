clear
clc
%many ways to define TF
%1
% num=[1];
% den=[1 13.013 32.13 20.32 0.2];
% GH=tf(num,den)
%2
% GH=zpk([], [0, -0.6, -0.1], 5)
%3
 s=tf('s');
 GH=30/(s+5)*(s+6)
 
p = pole(GH)
%p = roots([1 9 18 0]) %find poles

z= zero(GH) %find zeros

%pzmap(GH) %plot z & p for open loop TF

%for k = 1:12:162 % from 1 to 162 by step 12
 %   pzmap(feedback(GH*k, 1)) %feedback is 1
  %  hold on 
%end 

% hold off
% rlocus(GH) %root loci
%  GH1=1/s*(s+3)*(2*s+6)
%  GH2=1/s*(s+3)*(s+16);
%  GH3=1/s*(s+3)*(2*s+16);
%  GH4=1/s*(s+3)*(3*s+6);
%  GHstacked = stack(1, GH, GH1, GH2, GH3, GH4); %show multiple TF in one garph
%  
sisotool(GH) % to draw RL on single input single output tool
 