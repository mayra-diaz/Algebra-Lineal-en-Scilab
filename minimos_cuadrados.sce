// Generar puntos aleatoriamente
/*
   // Definir el rango
   x = linspace(0, 3*%pi, 10)'
   // Generar f(x)
   y = 10*sin(x)
   disp([x y])
*/

function minimos_cuadrados_1(x,y)
   [j,m]=size(y)
   x2=x.*x
   y2=y.*y
   xy=x.*y
   yprom=sum(y)/j
   b=[sum(y);sum(xy)]
   A=[j sum(x);sum(x) sum(x2)]
   m=inv(A)*b
   y11=eye(j,1)
   e2=eye(j,1)
   p=poly([m(2,1)
   m(1,1)]($:-1:1),'x','c')
   disp(p,"Ajuste lineal por regresión lineal=")
   y11=(y-yprom)
   y11=y11.**2
   for i=1:j
      e2(i,1)=(y(i,1)-horner(p,x(i,1)))**2
   end
   disp((sum(y11)-sum(e2))/sum(y11),"(calidad ajuste) r2=")
   disp(sqrt((sum(y11)-sum(e2))/sum(y11)),"(coeficiente determinación) r=")
endfunction


function minimos_cuadrados_2(x,y)
   [j,m]=size(y)
   x2=x.*x
   y2=y.*y
   xy=x.*y
   x3=x.*x2
   x4=x.*x3
   yprom=sum(y)/j
   b=[sum(y);sum(xy); sum(xy.*x)]
   A=[j sum(x) sum(x2);sum(x) sum(x2) sum(x3); sum(x2) sum(x3) sum(x4)]
disp(A)   
disp(b)
   m=inv(A)*b
   y11=eye(j,1)
   e2=eye(j,1)
disp(m)  
 p=poly([m(3,1); m(2,1); m(1,1)]($:-1:1),'x','c')
   disp(p,"Ajuste lineal por regresión cuadrática=")
   y11=(y-yprom)
   y11=y11.**2
   for i=1:j
      e2(i,1)=(y(i,1)-horner(p,x(i,1)))**2
   end
      disp((sum(y11)-sum(e2))/sum(y11),"r2=")
      disp(sqrt((sum(y11)-sum(e2))/sum(y11)),"r=")
   endfunction


function polinomio = minimos_cuadrados(x, y, grado)
   n = length(y)
   A = ones(grado+1, grado+1)
   b = ones(grado+1, 1)
   A(1,1) = n
   b(1) = sum(y)
   for i = 2:grado+1
      A(1, i) = sum(x^(i-1))
   end
   for i = 2:grado+1
      gr = i-1
      for j = 1:grado+1
         A(i, j) = sum(x^(gr))
         gr = gr + 1
      end
      b(i) = sum((x^(i-1)).*y)
   end
   disp(A)
   disp(sum(A))
   coeficientes = inv(A)*b
   polinomio = poly(coeficientes, 'x', 'c')

   // ERROR
   yprom = sum(y)/n

endfunction
