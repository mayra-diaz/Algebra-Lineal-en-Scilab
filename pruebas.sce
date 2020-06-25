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
exec('~\mate-III\Algebra-Lineal-en-Scilab\interpolacion.sce', -1)

// Spline natural
//exec('~\mate-III\Algebra-Lineal-en-Scilab\spline_natural.sce', -1)

x = [-2 0 1]'
y = [-27 -1 0]'

newt = interpolacion_newton(x, y)
lagr = interpolacion_lagrange(x, y)
polinm = interpolacion_polinomial(x, y)

disp(newt, 'Newton')
disp(lagr, 'Lagrange');
disp(polinm, 'polinomial');
