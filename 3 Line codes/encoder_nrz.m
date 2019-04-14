function y = encoder_nrz(x,osf)
  x = reshape(x,length(x),1);
  x(x==0) = -1;
  y = repmat(x,1,osf);
  y = reshape(y',1,size(y,1)*size(y,2));
end