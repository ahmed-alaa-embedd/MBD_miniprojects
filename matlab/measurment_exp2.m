%measurment exp2

p1=[0 4.9 9.8 14.7 19.6];
p2=[19.6 14.7 9.8 4.9 0];
x1=[0 2.54 5.83 7.60 9.90 ];
x2=[9.90 8.74 6.46 3.64 0.07];
y=[0 9.90];
x=[0 19.6]

plot(p1,x1,'--k',p2,x2,'--r')
hold
plot(x,y)
xlabel('pressure')
ylabel('mass')
title('calibration of A U-shaped load cell')
grid on 
