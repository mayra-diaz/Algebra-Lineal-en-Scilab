// Generar puntos aleatoriamente
/*
   // Definir el rango
   x = linspace(0, 3*%pi, 10)'
   // Generar f(x)
   y = 10*sin(x)
   disp([x y])
*/

function v = ajuste_lineal(x, y)
   M = [x ones(length(x), 1)]
   v = inv(M'*M)*M'*y
endfunction

function v = ajuste_cuadrado(x, y)
   M = [x.^2 x ones(length(x), 1)]
   v = inv(M'*M)*M'*y
endfunction

function v = ajuste_cubico(x, y)
   M = [x.^3 x.^2 x ones(length(x), 1)]
   v = inv(M'*M)*M'*y
endfunction

function v = ajuste_cuatro(x, y)
   M = [x.^4 x.^3 x.^2 x ones(length(x), 1)]
   v = inv(M'*M)*M'*y
endfunction

function v = ajuste_cinco(x, y)
   M = [x.^5 x.^4 x.^3 x.^2 x ones(length(x), 1)]
   v = inv(M'*M)*M'*y
endfunction

// Expresar un polinomio
/*

*/
