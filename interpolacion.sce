function polinomio = interpolacion_polinomial(x, y, grado)
   n = length(x)
   if n >= grado then
      M = ones(n, 1)
      M = [M x]
      for i = 3:grado
         aux = x(:)^(i-1)
         M = [M aux]
      end
      coeficientes = inv(M)*y
      polinomio = poly(coeficientes, 'x', 'c')
   else
      disp('No es posible realizar la interpolacion');
endfunction


function tabla = diferencias_divididas(x, y)
   n = length(x);
   dfd=zeros(n,n);
   dfd(:,1)=y;
   for j=2:n
      for i=j:n
         dfd(i,j)=(dfd(i,j-1)-dfd(i-1,j-1))/(x(i)-x(i-j+1))
      end
   end
   tabla = dfd
endfunction


function polinomio = interpolacion_newton(x, y)
   n = length(x)
   dfd = diferencias_divididas(x, y)
   P = dfd(1,1);
   for i=2:n
      P = P + dfd(i,i) * poly (x(1:(i-1)), "x");
   end
   polinomio = P
endfunction


function polinomio = interpolacion_lagrange(x, y)
   n = length(x)
   xi=poly(0,"x")
   P=0;
   for i=1:n
      L=1
      for j=[1:i-1,i+1:n]
         L=L*(xi-x(j))/(x(i)-x(j))
      end
      P = P + L*y(i)
   end
   polinomio = P
endfunction
