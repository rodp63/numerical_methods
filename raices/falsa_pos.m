function r = falsa_pos(a, b, e)
  
  h = (b - a) / 50;
  xx = a : h : b;
  yy = fun(xx);
  plot(xx,yy), grid;
  hold on;
  
  e1 = e + 1;
  while e1 > e
    c = b - (fun(b) * (b-a) / (fun(b) - fun(a)));
    fprintf('a = %.5f, b = %.5f, c = %.5f\n',a,b,c);
    fprintf('f(a) = %5f, f(b) = %5f, f(c) = %5f\n',fun(a),fun(b),fun(c));
    if fun(a) * fun(c) < 0
      b = c;
    else
      a = c;
    end
    e1 = abs(fun(c));
  end
  r = c;
  fprintf('%.10f\n',r);
  
  plot(c,fun(c),'or');
  hold off;
  
endfunction 
