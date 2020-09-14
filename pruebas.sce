// Comando exec:
// exec('...ruta\archivo.sce', tipo)



// ------------------------------------------------------------------------//


// Algebra Lineal
//exec('~\mate-III\Algebra-Lineal-en-Scilab\algebra_lineal.sce', -1)

// Potencia Inversa
//exec('~\mate-III\Algebra-Lineal-en-Scilab\valores_propios.sce', -1)

// Rotacion
//exec('~\mate-III\Algebra-Lineal-en-Scilab\rotaciones.sce', -1)


// ------------------------------------------------------------------------//


// Punto fijo - Bisección
//exec('~\mate-III\Algebra-Lineal-en-Scilab\localizacion_raices.sce', -1)

// Jacobi - Gauss Seidel
//exec('~\mate-III\Algebra-Lineal-en-Scilab\aproximacion_sistemas.sce',-1)

// Minimos Cuadrados
//exec('~\mate-III\Algebra-Lineal-en-Scilab\minimos_cuadrados.sce',-1)

// Ajuste QR
//exec('~\mate-III\Algebra-Lineal-en-Scilab\ajuste_qr.sce', -1)

// Interpolacion Polinomial-Newton-Lagrange
//exec('~\mate-III\Algebra-Lineal-en-Scilab\interpolacion.sce', -1)

// Spline natural
//exec('~\mate-III\Algebra-Lineal-en-Scilab\spline_natural.sce', -1)

// Integracion numerica
//exec('~\mate-III\Algebra-Lineal-en-Scilab\integracion_numerica.sce', -1)

deff('y=f(x)', 'y=3*(x-4)-sin(2*x)')
a = 0
b = 5
c = (a+b)/2
err = (b-a)/2
disp("a        b       c     f(a)     f(b)     f(c)     error")
z = [a b c f(a) f(b) f(c) err]
for i = 1:it

   if f(a)*f(c) < 0 then
      b = c
   else
      a = c
   end

   c = (a+b)/2
   err = err/2
   z = [z; a b c f(a) f(b) f(c) err]

end
disp(z, 'z');
