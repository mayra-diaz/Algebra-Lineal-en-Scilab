exec('~\mate-III\Algebra-Lineal-en-Scilab\spline_natural.sce', -1)

clc

load("pato1.dat","X1","Y1","X2","Y2","X3","Y3","X4","Y4","X5","Y5","X6","Y6","X7","Y7","X8","Y8","X9","Y9");

S1=splinenatural(X1,Y1)
S2=splinenatural(X2,Y2)
S3=splinenatural(X3,Y3)
S4=splinenatural(X4,Y4)
S5=splinenatural(X5,Y5)
S6=splinenatural(X6,Y6)
S7=splinenatural(X7,Y7)
S8=splinenatural(X8,Y8)
S9=splinenatural(X9,Y9)

xgrid(10)
