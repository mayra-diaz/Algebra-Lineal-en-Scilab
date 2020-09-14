function R= CONVERTORBI(x)
    x = round(x)
    signo = 0
    exponente = 0
    mantisa = 0
    //Hallar signo
    if x< 0 
        signo = 1
    else
        signo = 0 
    end
   //Hallar exponente
    xbinario = dec2bin(x)
    str=string(xbinario)
    tamaño= length(str)
    precision=tamaño+126
    exponente=dec2bin(precision)
    //Hallar mantisa
    strm = string(xbinario)
    mantisa = part(strm,2:tamaño)
    R =struct("signo",signo, "exponente", exponente,"mantisa",mantisa)    
endfunction
 
R=CONVERTORBI(123456)
disp(R)
