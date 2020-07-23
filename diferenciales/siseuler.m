function siseuler(t0, b, y0, h)
  
  y = y0;
  i = 0;
  for t = t0 : h : b
    i = i+1;
    fprintf('i=%g \t t=%f \t x=%f \t y=%f \n',i,t,y(1),y(2));
    y1(i) = y(1);
    y2(i) = y(2);
    y = y + h * feval('fun2',t,y);
  end
  
  t = t0:h:b;
  plot(t, y1,'LineWidth', 2, t, y2,'LineWidth',2), grid;
  legend('x','y');
  
endfunction
