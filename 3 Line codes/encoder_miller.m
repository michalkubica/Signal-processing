function y = encoder_miller(x,osf)
  po = ones(1,osf);
  po(osf/2+1:osf) = -1;
  no = fliplr(po);
  pz = ones(1,osf);
  nz = -pz;
  y = [];
  
  for i=1:length(x)
    
    if isempty(y)
      if x(i) == 1
        y = [y, po];
      else
        y = [y, pz];
      end
      continue
    end
    
    if x(i) == 1
      if y(length(y)) == 1
        y = [y, po];
      else
        y = [y, no];
      end
    elseif x(i) == 0 && x(i-1) == 0
      if y(length(y)) == 1
        y = [y, nz];
      else
        y = [y, pz];
      end
    elseif x(i) == 0 && x(i-1) == 1
      if y(length(y)) == 1
        y = [y, pz];
      else
        y = [y, nz];
      end
    end 
  end
end