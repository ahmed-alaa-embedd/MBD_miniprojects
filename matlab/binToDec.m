clear 
clc

bin_nr= input('Enter your binary number:','s');
dec=0;
i=1;
while i<length(bin_nr)+1
    dec = dec + str2num(bin_nr(i))* 2^(length(bin_nr)-i);
    i=i+1;
end
dec