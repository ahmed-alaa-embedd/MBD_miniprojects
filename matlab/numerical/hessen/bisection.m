syms x;
mode=input('for polynomial equation enter 0 and to enter your custom equation enter 1:');
if mode
    A=string(input('please enter the equation: '));
    A=strcat('@(x)',A);
    A=str2func(A);
else
    A=input('please enter the coeffecent vector enclosed with square brackets: ');
    temp=length(A);
    f=A(temp);
    for i=1:(temp-1)
        f=f+A(i)*x^(temp-i);
    end
end
a=[];
b=[];
c=[];
fa=[];
fb=[];
fc=[];
e=[];
a(1)=input('please enter a: ');
b(1)=input('please enter b: ');
Erq=input('please enter required tolerence:');
N=input('please enter number of iretations:');
counter=0;
for i=1:N
   
    c(i)=(a(i)+b(i))/2;
    if mode
        fa(i)=A(a(i));
        fb(i)=A(b(i));
        fc(i)=A(c(i));
    else
        fa(i)=subs(f,a(i));
        fb(i)=subs(f,b(i));
        fc(i)=subs(f,c(i));
    end
    e(i)=abs(c(i)-b(i));
    
    if (fa(i)*fc(i)>=0)
        a(i+1)=c(i);
        b(i+1)=b(i);
    else 
        a(i+1)=a(i);
        b(i+1)=c(i);
    end
    counter=counter+1;
    if e(i)<Erq
        break
    end
      
end
fprintf('  a(i)  |    b(i)    |    c(i)    |    fa(i)    |    fb(i)    |    fc(i)    |    error    \n')
for i=1:counter

    fprintf('%f  |  %f  |  %f  |  %f  |  %f  |  %f  |  %f  \n',a(i),b(i),c(i),...
        fa(i),fb(i),fc(i),e(i))
end
if A(a(counter))>A(b(counter))

    fprintf(' the root is :%f',b(counter))
else
    fprintf(' the root is :%f',a(counter))
end