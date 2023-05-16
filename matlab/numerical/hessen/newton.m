function [R,e]= newton(fun ,a ,N ,err_step,err_abs )
%estmates the root value of a function using newton method
%inputs:
% f: function of x
% a: the starting point 
% N: number of iritation
% err: the required step error
% err_abs: the required absulote error
%get the derivative of the funtion
format long
syms x
f(x)=fun;
g(x)=diff(fun);
%make array to store all values of the process
X(1)=a;
for k=1:N
    
    %calculate the new estimate 
    X(k+1)=X(k)-f(X(k))/g(X(k));
    %check for error
    if (abs(f(X(k+1))-f(X(k)))<err_abs)
        R=X(k+1);
        e=abs(f(X(k+1))-f(X(k)));
        return
    elseif (abs(X(k+1)-X(k))<err_step)
            R=X(k+1);
            e=abs(f(X(k+1))-f(X(k)));
            return
    end
    
end
error('root was not found')
