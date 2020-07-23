function d1 = fun2(t, y)

  % x = y(1) & y = y(2)
  f(1,:) = -2/25 * y(1) + 1/50 * y(2);
  f(2,:) = 2/25 * y(1) - 2/25 * y(2);
  d1 = f;
  
endfunction

