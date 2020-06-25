/*
------------------------------------------------------
                  DEFINIR FUCIONES
------------------------------------------------------
*/

deff('y=f(x)', 'y= 2*x')
deff('y=g(x)', 'y= 2*x')


/*
------------------------------------------------------
                    PUNTO FIJO
------------------------------------------------------
*/
function z = punto_fijo_tol(g, x0, tol)
   err = 1
   x = x0
   z = [x err]
   while abs(err) > tol
      temp = x
      x = g(x)
      err = abs((x-temp)/x)
      z = [z; x err]
   end
endfunction

function z = punto_fijo_it(x0, it)
   err = 1
   x = x0
   z = [x err]
   for i = 1:it
      temp = x
      x = g(x)
      err = abs((x-temp)/x)
      z = [z; x err]
   end
endfunction


/*
------------------------------------------------------
                    BISECCIÓN
------------------------------------------------------
*/

function r = biseccion_it(f, a, b, it)
   c = (a+b)/2
   err = (b-a)/2
   z = [a b c f(a) f(b) err]
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
endfunction

function r = biseccion_tol(f, a, b, tol)
   c = (a+b)/2
   err = (b-a)/2
   z = [a b c f(a) f(b) err]
   n = ceil(log2(b-a)/(2*tol))
   while err > tol

      if f(a)*f(c) < 0 then
         b = c
      else
         a = c
      end

      c = (a+b)/2
      err = err/2
      z = [z; a b c f(a) f(b) f(c) err]

   end
   printf('Hubieron %d iteraciones', n)
endfunction
