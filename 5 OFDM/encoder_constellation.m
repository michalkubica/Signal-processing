function y = encoder_constellation(x,con)
  yy = reshape(x,[4,length(x)/4]);
  yrt = yy';
  
  table = con(:,2:5);
  values = con(:,1);
  y = zeros(length(x)/4,1);

  for i=1:length(x)/4
    for j=1:16
      if yrt(i,:) == table(j,:)
        y(i) = values(j);
        break;
      end
    end
  end
  y = conj(y);
end