clc
clear

f_input = input('Ingrese la función f(x, y), por ejemplo: x^2 + y^2: ', 's');
f = str2func(['@(x, y) ' f_input]);  

n = input('Ingrese el número de particiones (n): ');
x(1) = input('Ingrese el valor inicial x0: ');
y(1) = input('Ingrese el valor inicial y0: ');
xn = input('Ingrese el valor final xn: ');

h = (xn - x(1)) / n;

for i = 2:n+1
    k1 = f(x(i-1),y(i-1));
    k2 = f(x(i-1)+h/2,y(i-1)+(h*k1)/2);
    k3 = f(x(i-1)+h/2,y(i-1)+(h*k2)/2);
    k4 = f(x(i-1)+h,y(i-1)+h*k3);
    y(i) = y(i-1) + ((h/6) * k1+2*k2+2*k3+k4);
    x(i) = x(1) + (i-1) * h;                
end

fprintf('El valor aproximado de y(%d) es: %d ', xn, y(xn+1));
