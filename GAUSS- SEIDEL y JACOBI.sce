//FUNCIÓN GAUSS CON N ITERACIONES
function x= GAUSSN(A,b,N)
    D=diag(diag(A))
    L=-tril(A,-1)
    U=-triu(A,1)
    Tgs=inv(D-L)*U
    Cgs=inv(D-L)*b
    [m,n] = size(A)
    X=ones(n,1)
    cont=0
    while N>cont
        aux=Tgs*X+Cgs
        X=aux
        cont=cont+1
    end
    x=X
endfunction
A=[10 0 -1;4 12 -4; 4 4 10]
b=[-1 8 4]'
n=2
x= GAUSSN(A,b,n)
disp(x)
disp(A*x)


//FUNCIÓN GAUSS CON Tolerancia
function x= GAUSSTol(A,b,Tol)
    D=diag(diag(A))
    L=-tril(A,-1)
    U=-triu(A,1)
    Tgs=inv(D-L)*U
    Cgs=inv(D-L)*b
    [m,n] = size(A)
    X=ones(n,1)
    tol=10
    while tol>Tol
        aux=Tgs*X+Cgs
        tol=abs(max(X-aux))
        X=aux
    end
    x=X
endfunction
Tol=0.000000000001
x= GAUSSTol(A,b,Tol)
disp(x)
disp(A*x)


//FUNCIÓN JACOBI CON N ITERACIONES
function x= JACOBIN(A,b,N)
    D=diag(diag(A))
    L=-tril(A,-1)
    U=-triu(A,1)
    Tgs=inv(D)*(L+U)
    Cgs=inv(D)*b
    [m,n] = size(A)
    X=ones(n,1)
    cont=0
    while N>cont
        aux=Tgs*X+Cgs
        X=aux
        cont=cont+1
    end
    x=X
endfunction
A=[2 1;2 3]
b=[2 7]'
n=2
x= JACOBIN(A,b,n)
disp(x)
disp(A*x)

//FUNCIÓN JACOBI CON Tolerancia
function x=JACOBITol(A,b,Tol)
    D=diag(diag(A))
    L=-tril(A,-1)
    U=-triu(A,1)
    Tgs=inv(D)*(U+L)
    Cgs=inv(D)*b
    [m,n] = size(A)
    X=ones(n,1)
    tol=10
    while tol>Tol
        aux=Tgs*X+Cgs
        tol=abs(max(X-aux))
        X=aux
    end
    x=X
endfunction
Tol=0.000000000001
x= JACOBITol(A,b,Tol)
disp(x)
disp(A*x)


//CONVERGENTE O NO 
//op=1; Diagonal estrictamente dominante
//op=2; No es Diagonal
function op=verdiag(A)
    [m,n]=size(A)
    op=1
    for k=1:n
        if abs(A(k,k))<-sum(abs(A(k,:)))-abs(A(k,k))
            op=0
            break
        end
    end
endfunction

op=verdiag(A)
disp(op,"Diag=")

//Radio espectral Jacobi  (debe ser menor a 1)
D=diag(diag(A))
L=D-tril(A)
U=D-triu(A)
T=inv(D)*(U+L)
a=abs(spec(T))
disp(max(a),"Radio espectral matriz J T=")

//Radio espectral Gauss  (debe ser menor a 1)
D=diag(diag(A))
L=-tril(A,-1)
U=-triu(A,1)
Tgs=inv(D-L)*U
a=abs(spec(Tgs))
disp(max(a),"Radio espectral matriz  G T=")
