clc 
clearvars
bin_nm = input('Enter your binary number: ','s');
k = strfind(bin_nm,'.');
if k
    temp=strsplit(bin_nm,'.');
    [bint_nm, brem_nm]=deal(temp{:});
    bint_nm=fliplr(bint_nm);
else
    bint_nm=bin_nm;
    brem_nm=[];
end

int_nm=0;
rem_nm=0;
for k=1:length(bint_nm)
    int_nm = int_nm + (2 ^  (k-1)) * str2num(bint_nm(k));
    if k<=length( brem_nm)
        rem_nm = rem_nm + (2 ^ -k) * str2num(brem_nm(k));
    end
end
int_nm+rem_nm