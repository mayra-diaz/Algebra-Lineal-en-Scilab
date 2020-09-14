function [z] = rk2(f, a, b, y0, h)
   z = [a y0]
	x = [a:h:b]
	n = length(x)
	for k = 1:n-1
		k1 = h*f(x(k), y0)
		k2 = h*f(x(k+1),  y0+k1)
		y1 = y0 + 0.5*(k1+k2)
		z = [z; x(k+1) y1]
		y0 = y1
	end
endfunction

function z = rk4(f, a, b, y0, h)
   z = [a y0]
	x = [a:h:b]
	n = length(x)
   for k = 1:n-1
		k1 = h*f(x(k), y0)
		k2 = h*f(x(k)+h/2, y0+k1/2)
      k3 = h*f(x(k)+h/2, y0+k2/2)
      k4 = h*f(x(k)+h, y0+k3)
		y1 = y0 + (1/6)*(k1+2*(k2+k3)+k4)
		z = [z; x(k+1) y1]
		y0 = y1
	end
endfunction

deff('d=g(t, h)', 'd=(300+1000*sin(5*%pi*t/12)*cos(%pi*t/12)-60*sqrt(19.62*h))/3130')

function ydot = f(t, h)
	ydot = (300+1000*sin(5*%pi*t/12)*cos(%pi*t/12)-60*sqrt(19.62*h))/3130
endfunction


// Ejemplo
/*
t = [0:0.1:150]
v = ode(3, 0, t, f)
vf = v'
r2 = rk2(g, 0, 150, 3, 0.1)
r4 = rk4(g, 0, 150, 3, 0.1)

dif2 = abs(vf- r2(:,2))
dif4 = abs(vf- r4(:,2))

todo2 = [r2(:,2) vf dif2]
todo4 = [r4(:,2) vf dif4]

disp('   RK2      EDO 	  ERROR', todo2)
disp('   RK4      EDO 	  ERROR', todo4)
*/
//plot(t, r2(:,2))
//plot(t, r4(:,2))
//plot(t, vf)
