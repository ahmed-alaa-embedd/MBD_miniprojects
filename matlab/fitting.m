%coefficients = polyfit(x, y, 1);
%xFit = linspace(min(x), max(x), 1000);
%yFit = polyval(coefficients , xfit);
%hold on;
%plot(xFit, yFit, 'r-', 'LineWidth', 2);
%grid on;

D = [0 4 8 12 16 20 24 28 32];
F = [0 .23 .36 .43 .52 .64 .78 .85 .92];  
plot(D,F,'.b')
p = polyfit(D,F,1)
f = polyval(p,D);
hold on
plot(D,f,'--r')