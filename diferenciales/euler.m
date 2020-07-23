function euler (x0, y0, h, b)

  i = 1;
  y = y0;
  for x = x0 : h : b
    fprintf("x = %.2f, y = %.7f\n", x, y);
    vx(i) = x;
    vy(i) = y;
    y = y + h * fun(x, y);
    i++;
  end
  plot(vx, vy, 'r'), grid;
  legend('N(t)');
  
endfunction
