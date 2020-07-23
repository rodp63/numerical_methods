function y = trapecio(a, b, n)

  h = (b - a) / n;
  s = 0;
  for x = a + h : h : b - h
    s += fun(x);
  endfor
  s *= h;
  y = s + (h/2) * (fun(a)+fun(b));
  fprintf("ans = %.10f\n", y);
  
endfunction
