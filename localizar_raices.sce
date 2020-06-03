/*
------------------------------------------------------
                    PUNTO FIJO
------------------------------------------------------
*/

function y = g(x)
   // Insertar aquí la function
   // x = ...
endfunction

function r = punto_fijo_tol(x0, tol)
   err = 100
   x = x0
   while abs(err) > tol
      temp = x
      x = g(x)
      err = abs(x-temp)*100/temp
      // Opcional, para mostrar cada x y cada error por iteración
      // disp(err, "Error:", x, "x:", i, "Iteración:")
   end
   r = x
endfunction

function r = punto_fijo_it(x0, it)
   err = 100
   x = x0
   for i = 1:it
      temp = x
      x = g(x)
      err = abs(x-temp)*100/temp
      // Opcional, para mostrar cada x y cada error por iteración
      // disp(err, "Error:", x, "x:", i, "Iteración:")
   end
   r = x
endfunction


/*
------------------------------------------------------
                    BISECCIÓN
------------------------------------------------------
*/

function y = f(x)
   // Insertar aquí la function
   // x = ...
endfunction

function r = biseccion_it()
endfunction

function r = biseccion_tol()
endfunction
