function y = decoder_miller(x,osf)
  y = [];
  for i=1:osf:length(x)
    if x(i) == x(i+osf-1)
      y = [y, 0];
    else
      y = [y, 1];
    end
  end
end