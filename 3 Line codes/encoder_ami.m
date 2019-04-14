function y = encoder_ami(x,osf)
  x = reshape(x,length(x),1);
  k = find(x);
  p = k(2:2:end);
  x(p) = -1;
  y = repmat(x,1,osf);
  y = reshape(y',1,size(y,1)*size(y,2));
end