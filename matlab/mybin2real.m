%function decimal= mybin2real(binarystring)
%decimal=0;
%for i=1: length(binarystring)
 %   decimal= decimal+ str2num(binarystring(i))*2^(length(binarystring)-1);
%end
%    decimal
%end
function x=mybin2real(s)

% handle input
if iscellstr(s) 
    s = char(s); 
end

if ~ischar(s) 
    error(message('MATLAB:bin2dec:InvalidInputClass')); 
end

if isempty(s)
    x = []; 
    return, 
end


[m,n] = size(s);

% Convert to numbers
v = s - '0'; 
twos = pow2(n-1:-1:0);
x = sum(v .* twos(ones(m,1),:),2);
