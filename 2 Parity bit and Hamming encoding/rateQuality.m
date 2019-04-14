function BER = rateQuality(original,transformed)
  h = original > transformed;
  l = original < transformed;
  nerr = sum(h(:) == 1) +  sum(l(:) == 1);
  BER = nerr / length(original);
end