clear
clc

dec_nr=input('Enter your dec num:');
i=1;
q=floor(dec_nr/2);
r=rem(dec_nr,2);
bin(i)=num2str(r(i));
while 2<=q
    dec_nr=q;
    i=i+1;
    q=floor(dec_nr/2);
    r=rem(dec_nr,2);
    bin(i)=num2str(r);
end

bin(i+1)=num2str(q);
bin=fliplr(bin)