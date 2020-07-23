function runge_kutta(x0, y0, h, b)

  i = 1;
  y = y0;
  for x = x0 : h : b
    fprintf("x = %.2f, y = %.7f\n", x, y);
    vx(i) = x;
    vy(i) = y;
    k1 = h * fun(x, y);
    k2 = h * fun(x+h, y+k1);
    y = y + (k1 + k2)/2;
    i++;
  end
  plot(vx, vy, 'r','LineWidth',2), grid;
  legend('x(t)');
      
endfunction
