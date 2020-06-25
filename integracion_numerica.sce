function I = simpson_simple(f, a, b)
	I = (h/3)*(f(a)+f((b-a)/2))
endfunction


function I = simpson_compuesto(f, a, b, n)
	if modulo(n, 2) == 0 then
		h = (b-a)/n
		x = [a:h:b]
		l = length(x)
		xpar = x(2:2:l-1)
		ximpar = x(3:3:l-2)
		I = (h/3)*(f(a)+4*sum(f(xpar))+2*sum(f(ximpar))+f(b))
	else
		disp('n debe ser par')
		I = 0
	end
endfunction


function I = simpson_compuesto_puntos(x, y)
	n = length(x)
	if modulo(n, 2) <> 0 then
		h = (x(n)-x(1))/(n-1)
   	ypar = y(2:2:n-1)
      yimpar = y(3:3:n-2)
      I = (h/3)*(y(1)+4*sum(ypar)+2*sum(yimpar)+y(n))
   else
      disp('n debe ser impar')
      I = 0
	end
endfunction




function I = trapecio_compuesto(f, a, b, h)
	x = [a:h:b]
	I = (h/2)*(f(x(1))+2*sum(f(x(2:length(x)-1)))+f(b))
endfunction


function I = trapecio_compuesto_puntos(x, y)
	n = length(x)
	h = (x(n)-x(1))/(n-1)
   I = (h/2)*(y(1)+2*sum(y(2:n-1))+y(n))
endfunction
