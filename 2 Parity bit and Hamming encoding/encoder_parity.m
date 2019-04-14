function [encoded, dummy_bits] = encoder_parity(vec,n)  
  rest = mod(length(vec),n);
  toadd = n-rest;
  additional = [];
  if rest ~= 0
    additional = zeros(1,toadd);
  end
  newvec = [vec, additional];
  qq = length(newvec)/n;
  tmp = reshape(newvec,[n,qq]);
  tmp = tmp';
  
  parity = mod(sum(tmp, 2), 2);
  before = [tmp, parity]; 
  
  encoded = reshape(before',[1,size(before,1)*size(before,2)]);
  dummy_bits = length(additional);
end