clc


// Comandos

// A = [matriz]
// v = spec(A)  --> vector de los valores propios
// [VC, VA] = spec(A)

// Polinomio Característico
// t = spec(A)
// policar = poly(t', "lamba", "roots")
// disp(policar)

// Método de la potencia
function v = potencia_inversa(A, x0, it)
    E = inv(A)
    for i = 1:it
        yf = E*x0
        [maxi, pos] = max(abs(yf))
        w = yf(pos) // lambda
        u = 1/w
        xf = yf/w // vector propio
    end
    v = xf
endfunction
