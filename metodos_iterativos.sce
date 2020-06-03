/*
------------------------------------------------------
                    CONVERGENCIA
------------------------------------------------------
*/

// Verificar que sea estrictamente dominante
function bool = es_estrictamente_dominante(M)
    [m, n] = size(M)
    bool = 1
    for k = 1:n
        if abs(M(k,k)) <= sum(abs(M(k,:)) - abs(M(k,k) then
            bool = 0
            break
        end
    end
endfunction

// Verificar radio espectral
function bool = radio_espectral_menor_a_1(M)
    bool = 0
    radio = max(abs(spec(A)))
    if radio < 1 then
        bool = 1
    end
endfunction

// Verificar convergencia
function bool = converge(A)
   bool = 0
   if es_estrictamente_dominante(A) == 1 then
      bool = 1
   elseif radio_espectral_menor_a_1 == 1 then
      bool = 0
   end
endfunction


/*
------------------------------------------------------
                    GAUSS SEIDEL
------------------------------------------------------
*/

// Gauss Seidel Tol
function [e, vf]= gauss_seidel_tol(A, b, x0, tol)
   if converge(A) == 1 then
      [m, n] = size(A)
      D = diag(diag(A))
      L = tril(A, -1)*(-1)
      U = triu(A, 1)

      T = inv(D-L)*U
      C = inv(D-L)*b
      err = 1
      z = [x0']

      while err > tol
         xf = T*x0+C
         z = [z, xf']
         err = norm(xf-x0)/norm(xf)
         x0 = xf
       end
   else
      disp("La matriz no converge")
      e = 0
      vf = 0
   end
endfunction


// Gauss Seidel Iterations
function [e, vf] = gauss_seidel_it(A, b, x0, it)
   if converge(A) == 1 then
       [m, n] = size(A)
       D = diag(diag(A))
       L = tril(A, -1)*(-1)
       U = triu(A, 1)

       T = inv(D-L)*U
       C = inv(D-L)*b
       err = 1
       xf = x0

       for i = 1:it
           xf = T*x0+C
           err = norm(xf-x0)/norm(xf)
           x0 = xf
       end
       vf = xf
       e = err
   else
      disp("La matriz no converge")
      e = 0
      vf = 0
   end
endfunction


/*
------------------------------------------------------
                    JACOBI
------------------------------------------------------
*/

// Jacobi
function z = jacobi_tol(A, b, x0, tol)
   if converge(A) == 1 then
       [m, n] = size(A)
       D = diag(diag(A))
       L = tril(A, -1)
       U = triu(A, 1)

       T = inv(D)*(L+U)
       C = inv(D)*b
       err = 1
       z = [x0']

       while err > tol
           xf = T*x0+C
           z = [z, xf']
           err = norm(xf-x0)/norm(xf)
           x0 = xf
       end
   else
       disp("La matriz no converge")
       e = 0
       vf = 0
   end
endfunction

// Jacobi
function [e, vf] = jacobi_it(A, b, x0, it)
   if converge(A) == 1 then
       [m, n] = size(A)
       D = diag(diag(A))
       L = tril(A, -1)
       U = triu(A, 1)

       T = inv(D)*(L+U)
       C = inv(D)*b
       err = 1
       xf = x0

       for i = 1:it
           xf = T*x0+C
           err = norm(xf-x0)/norm(xf)
           x0 = xf
       end
       vf = xf
       e = err
   else
      disp("La matriz no converge")
      e = 0
      vf = 0
   end
endfunction
