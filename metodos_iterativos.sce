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
function bool = radio_espectral_menor_a_1(matriz)
    bool = 0
    radio = max(abs(spec(matriz)))
    if radio < 1 then
        bool = 1
    end
endfunction


// Gauss Seidel
function [e, vf]= gauss_seidel_perf(matriz, x0, tol)
    [m, n] = size(matriz)
    D = diag(diag(matriz))
    L = tril(A, -1)*-1
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
endfunction

// Gauss Seidel
function [e, vf] = gauss_seidel(matriz, x0, b, it)
    [m, n] = size(matriz)
    D = diag(diag(matriz))
    L = tril(A, -1)*-1
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
endfunction


// Jacobi
function z = jacobi_perf(matriz, x0, tol)
    [m, n] = size(matriz)
    D = diag(diag(matriz))
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
endfunction

// Jacobi
function [e, vf] = jacobi(matriz, x0, it)
    [m, n] = size(matriz)
    D = diag(diag(matriz))
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
endfunction

