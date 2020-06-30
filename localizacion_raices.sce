/*
------------------------------------------------------
                  DEFINIR FUCIONES
------------------------------------------------------
*/

deff('y=f(x)', 'y= 2*x')
deff('y=g(x)', 'y= sqrt(x)')


/*
------------------------------------------------------
                    PUNTO FIJO
------------------------------------------------------
*/
function z = punto_fijo_tol(g, x0, tol)
   if abs(numderivative(g, x0)) < 1 then
      err = 1
      x = x0
      z = [x err]
      while abs(err) > tol
         temp = x
         x = g(x)
         err = abs(x-temp)
         z = [z; x err]
      end
   else
      disp('No converge')
      z = 0
   end
endfunction

function z = punto_fijo_it(g, x0, it)
   if abs(numderivative(g, x0)) < 1 then
      err = 1
      x = x0
      z = [x err]
      for i = 1:it
         temp = x
         x = g(x)
         err = abs(x-temp)
         z = [z; x err]
      end
   else
      disp('No converge')
      z = 0
   end
endfunction


/*
------------------------------------------------------
                    BISECCIÓN
------------------------------------------------------
*/

function z = biseccion_it(f, a, b, it)
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
endfunction

function r = biseccion_tol(f, a, b, tol)
   c = (a+b)/2
   err = (b-a)/2
   z = [a b c f(a) f(b) f(c) err]
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
