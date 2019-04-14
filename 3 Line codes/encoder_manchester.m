function y = encoder_manchester(x,osf)
  x = reshape(x,length(x),1);
  a = repmat(x,1,osf/2);
  b = a;
  b(b==1) = -1;
  b(b==0) = 1;
  a(a==0) = -1;
  y = [a b];
  y = reshape(y',1,size(y,1)*size(y,2));
end