function y = decoder_constellation(x,con)
  x = conj(x);
  xr = zeros(size(x));
  xi = zeros(size(x));
  consts = [3; 1; -1; -3;];
  difs = zeros(4,1);
  difsj = zeros(4,1);
  
  %decide which element of the constellation a received symbol is closest to
  for k=1:length(x)
    difs = real(x(k)) - consts;
    [a b] = min(abs(difs));
    xr(k) = consts(b);
    difsj = imag(x(k)) - consts;
    [a b] = min(abs(difsj));
    xi(k) = consts(b);
  end
  xx = xr + xi*j;
  
  %decode
  table = con(:,2:5);
  values = con(:,1);
  y = zeros(length(x),4);
  
  for k=1:length(x)
    for l=1:16
      if xx(k) == values(l)
        y(k,:) = table(l,:);
        break;
      end
    end
  end
  y = reshape(y',[1,length(y)*4]);
end