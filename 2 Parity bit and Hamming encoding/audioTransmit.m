function [y,fp] = audioTransmit(x) 
  [A, fp] = audioread(x);
  A = A.*2^16;
  Y = uint16(A);
  str = dec2bin(Y);
  h = length(str)*16;
  z = reshape(str',[1,h]);
  N = length(z);  
  y = typecast(z,'int8');
  y(y == 48) = 0;
  y(y == 49) = 1;
end