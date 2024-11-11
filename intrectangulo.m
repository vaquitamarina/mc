clc
clear
disp('METODO DEL RECTANGULO');
f_input = input('Ingrese la funcion: ', 's');
f = str2func(['@(x) ', f_input]);
disp('Ingrese el intervalo de integracion:');
a=input('intervalo A: ');
b=input('intervalo B: ');
n=input('Numero de particiones: ');
x(1)=a;
x(n+1)=b;
h=(b-a)/n;
s=0;
for i=2:1:n
    x(i)=a+h*(i-1);
    s=s+f(x(i));
end
s = h * s;
disp(s);
