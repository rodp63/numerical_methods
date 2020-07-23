function d = deriv(x, h = 0.000001)
  
  d = (f(x+h) - f(x-h)) / (2*h);
  
endfunction
