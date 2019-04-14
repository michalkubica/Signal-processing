function decoded = decoder_parity(received_data,n,db)
  qq = length(received_data)/(n+1);
  tmp = reshape(received_data,[n+1,qq]);
  tmp = tmp';
  
  data = tmp(:,1:size(tmp,2)-1);
  parity = tmp(:,size(tmp,2));
  
  pb = mod(sum(data, 2), 2);
  h = pb > parity;
  l = pb < parity;
  nerr = sum(h(:) == 1) +  sum(l(:) == 1); %number of detected errors
  
  decoded = reshape(data', [1, size(data,1)*size(data,2)]);
  decoded = decoded(1:length(decoded)-db);
end