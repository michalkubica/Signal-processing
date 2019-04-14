function y = textReceive(x,vec)
  vec = typecast(vec,'int8');
  vec(vec == 0) = 48;
  vec(vec == 1) = 49;
  ch = char(vec);
  
  reshaped_vector = reshape(ch,[8,length(ch)/8]); %9 for linux
  r = reshaped_vector';
  str = bin2dec(r)';
  y = char(str);
  
  save(x,'y');
  %fileid = fopen(x,'w'); %linux
  %fprintf(fileid,'%1c ',y); 
end