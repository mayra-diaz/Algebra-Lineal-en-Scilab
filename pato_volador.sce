x=[1 4 7 10 12 14] y=[5 10 15 17 16 15] save("datos.dat","x","y");
load("datos.dat","x","y") disp(x) disp(y) S=splinenatural(x,y) 
