// Generar puntos aleatoriamente
/*
   // Definir el rango
   x = linspace(0, 3*%pi, 10)'
   // Generar f(x)
   y = 10*sin(x)
   disp([x y])
*/

unction mínimos_cuadrados_2(x,y) [j,m]=size(y) x2=x.*x y2=y.*y xy=x.*y yprom=sum(y)/j b=[sum(y);sum(xy)] A=[j sum(x);sum(x) sum(x2)] m=inv(A)*b y11=eye(j,1) e2=eye(j,1) p=poly([m(2,1); m(1,1)]($:-1:1),'x','c') disp(p,"Ajuste lineal por regresión lineal=") y11=(y-yprom) y11=y11.**2 for i=1:j e2(i,1)=(y(i,1)-horner(p,x(i,1)))**2 end disp((sum(y11)-sum(e2))/sum(y11),"r2=") disp(sqrt((sum(y11)-sum(e2))/sum(y11)),"r=") endfunction


function polinomio = minimos_cuadrados(x, y, grado)
   n = length(y)

endfunction
