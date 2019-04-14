function y = addZeros(vec,n) 
  rest = mod(length(vec),n);
  toadd = n-rest;
  toadd = toadd;
  additional = [];
  if rest ~= 0
    additional = zeros(1,toadd);
  end
  y = [vec, additional];
end