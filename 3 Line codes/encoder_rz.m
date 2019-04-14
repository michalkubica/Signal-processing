function y = encoder_rz(x,osf)
  x = reshape(x,length(x),1);
  z = zeros(size(x),osf/2);
  a = repmat(x,1,osf/2);
  a(a==0) = -1;
  y = [a z];
  y = reshape(y',1,size(y,1)*size(y,2));
end