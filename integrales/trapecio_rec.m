function y = trapecio_rec(a, b, j)

  h = (b - a) / (2 ^ j);
  if j == 0
    y = (h/2) * (fun(a)+fun(b));
    return;
  end
  sum = 0;
  for x = a + h : 2*h : b - h
    sum += fun(x);
  end
  y = trapecio_rec(a,b,j-1)/2 + (h*sum);
  %fprintf("ans = %.15f\n", y);
  
endfunction
