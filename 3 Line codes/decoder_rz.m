function y = decoder_rz(x,osf)
  xr = reshape(x,[osf,length(x)/osf]);
  xr = xr';
  y = xr(:,1);
  y = y';
  y(y==-1) = 0;
end