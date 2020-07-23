function y = simpson(a, b, n)

  h = (b - a) / (2 ^ n);
  spar = 0;
  simpar = 0;
  for x = a + h : 2*h : b - h
    simpar += fun(x);
  endfor
  for x = a + 2*h : 2*h : b - 2*h
    spar += fun(x);
  endfor
  y = (h/3) * (fun(a)+fun(b)) + (4*h/3) * simpar + (2*h/3) * spar;
  fprintf("ans = %.15f\n", y);
  
endfunction
