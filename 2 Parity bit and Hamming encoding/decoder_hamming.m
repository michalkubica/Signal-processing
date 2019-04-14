function decoded = decoder_hamming(received_data)
  v = reshape( received_data, [7,ceil(length(received_data)/7)] );
  v = v';
  q = size(v,1);
  fixed = v;
 
  x1 = xor(v(:,4), xor(v(:,5), xor(v(:,6), v(:,7))));
  x2 = xor(v(:,2), xor(v(:,3), xor(v(:,6), v(:,7))));
  x3 = xor(v(:,1), xor(v(:,3), xor(v(:,5), v(:,7))));
  position = x1*2^2 + x2*2^1 + x3*2^0;
  
  fixed = [fixed zeros(size(fixed,1),1)]; %adding dummy column
  position(position==0) = 8; %change all zeros to eights to avoid 0 index
  ind = (1:size(fixed,1)) + (position(:).'-1)*size(fixed,1); %linear indexes
  fixed(ind) = ~fixed(ind);
  fixed(:,8) = []; %deleting dummy column
    
  before = zeros(q,4);
  before(:,1) = fixed(:,3);
  before(:,2:4) = fixed(:,5:7);
  
  decoded = reshape(before', [1, size(before,1)*size(before,2)]);
end