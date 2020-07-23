function y = romberg(a, b, t)

  for j = 1 : t
    R(j,1) = trapecio_rec(a, b, j-1);
    for k = 2 : j
      R(j,k) = R(j,k-1) + (R(j,k-1) - R(j-1,k-1))/(4^(k-1) - 1);
    end
    if j > 1
      R(j,j) - R(j-1,j-1)
    end	     
  end
  R
  y = R(t,t);
  fprintf("S = %.10f\n", y);
  
endfunction
