clc
clear

f_input = input('Ingrese las funciones, ej:  x^2 + y^2:  ', 's');
f = str2func(['@(x, y) ' f_input]);


n = input('Ingrese el numero de particiones: ');
x(1) = input('Ingrese el x0: ');
y(1) = input('Ingrese e y0: ');
xn = input('Ingrese el xn: ');
h = (xn-x(1))/n;

for i=2:n+1
    y(i) = y(i-1) + h*f(x(i-1),y(i-1));
    x(i) = x(1) + ((i-1)*h);
end

y(n+1)
