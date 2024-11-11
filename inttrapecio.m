clc
clear
disp('METODO DEL TRAPECIO');
f_input = input('Ingrese la funcion: ', 's');
f = str2func(['@(x) ', f_input]);
disp('Ingrese el intervalo de integracion:');
a=input('intervalo A: ');
b=input('intervalo B: ');
n=input('Numero de particiones: ');
h=(b-a)/n;
x(1)=a;
x(n+1)=b;
s=0;
for i=2:n
    x(i)=x(1)+(i-1)*h;
    s=s+f(x(i));
end
itg=(h/2)*(f(x(1))+2*s+f(x(n+1)));
disp(itg);
    
