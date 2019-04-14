function encoded = encoder_hamming(vec)  
  n = 4;  
  rest = mod(length(vec),n); 
  toadd = 0;
  if rest ~= 0
    toadd = n-rest;
  end
  additional = zeros(1,toadd);
  newvec = [vec, additional];
  qq = length(newvec)/n;
  tmp = reshape(newvec,[n,qq]);
  tmp = tmp';
  
  before(:,1) = xor(tmp(:,1), xor( tmp(:,2), tmp(:,4)));
  before(:,2) = xor(tmp(:,1), xor( tmp(:,3), tmp(:,4)));
  before(:,3) = tmp(:,1);
  before(:,4) = xor(tmp(:,2), xor( tmp(:,3), tmp(:,4)));
  before(:,5) = tmp(:,2);
  before(:,6) = tmp(:,3);
  before(:,7) = tmp(:,4);
  
  encoded = reshape(before',[1,size(before,1)*size(before,2)]);  
end