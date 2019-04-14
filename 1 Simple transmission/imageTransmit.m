function [y,s] = imageTransmit(x)
  A = imread(x);
  s = size(A);
  Y = double(A);
  str = dec2bin(Y);
  h = length(str)*8;
  z = reshape(str',[1,h]);
  N = length(z);
  y = typecast(z,'int8');
  y(y == 48) = 0;
  y(y == 49) = 1;
end