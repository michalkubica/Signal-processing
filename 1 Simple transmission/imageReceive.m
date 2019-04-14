function y = imageReceive(x,vec,s)
  vec = typecast(vec,'int8');
  vec(vec == 0) = 48;
  vec(vec == 1) = 49;
  ch = char(vec);
   
  reshaped_vector = reshape(ch,[8,length(ch)/8]);
  r = reshaped_vector';
  str = bin2dec(r)';
  y3 = char(str);
  y2 = uint8(y3);
  y = reshape(y2,[s(1),s(2),s(3)]);
  
  imwrite(y,x);
end