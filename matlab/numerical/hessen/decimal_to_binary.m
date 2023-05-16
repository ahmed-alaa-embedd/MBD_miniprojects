clc 
dec_nr = input('Enter your decimal number: ');
k=1;
int_nm=floor(dec_nr);
frac_nm=dec_nr-int_nm;
r='';
rf='';

while int_nm>0
   
    r(k)=num2str(rem(int_nm,2));
    int_nm=floor(int_nm/2);
    k=k+1;
end
k=1;
while frac_nm ~= 0
    frac_nm=frac_nm*2;
    if frac_nm>=1
        rf(k)='1';
        frac_nm=frac_nm-1;
    else
        rf(k)='0';
    end
    k=k+1;
    %if k==50
    %    break
    %end
end

r=fliplr(r);
r=strcat(r,'.');
strcat(r,rf)