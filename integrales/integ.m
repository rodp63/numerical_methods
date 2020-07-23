function y = integ(a, b, n)
  
  h = (b - a) / n;
  s = 0;
  for x = a : h : b - h
    s += fun(x);
  endfor
  y = s * h;
  
endfunction
