function d = deriv(x, h = 0.000001)
  
  d = (fun(x+h) - fun(x-h)) / (2 * h);
  fprintf('f`(x) = %.8f\n',d);
  
endfunction
