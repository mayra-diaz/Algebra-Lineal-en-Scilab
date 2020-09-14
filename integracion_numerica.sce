function I = simpson_simple(f, a, b)
	h = (b-a)/2
	I = (h/3)*(f(a)+4*f(a+h)+f(b))
endfunction


function I = simpson_compuesto(f, a, b, n)
	if modulo(n, 2) == 0 then
		h = (b-a)/n
		x = [a:h:b]
		l = length(x)
		xpar = x(2:2:l-1)
		ximpar = x(3:2:l-2)
		fp = 0
		fi = 0
		for i = 1:length(xpar)
		   fp = fp + f(xpar(i))
		end
		for i = 1:length(ximpar)
		   fi = fi + f(ximpar(i))
		end
		I = (h/3)*(f(a)+4*fp+2*fi+f(b))
		// No siempre funciona
		//I = (h/3)*(f(a)+4*sum(f(xpar))+2*sum(f(ximpar))+f(b))
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
      yimpar = y(3:2:n-2)
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
