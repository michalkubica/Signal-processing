function y = audioReceive(x,vec,fp)
  vec = typecast(vec,'int8');
  vec(vec == 0) = 48;
  vec(vec == 1) = 49;
  ch = char(vec);
  
  reshaped_vector = reshape(ch,[16,length(ch)/16]);
  r = reshaped_vector';
  str = bin2dec(r)';
  reversed = str/2^16;
  
  audiowrite(x,reversed,fp);
  y = str; 
end