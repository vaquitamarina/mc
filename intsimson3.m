clc
clear
disp('METODO DE SIMSOM 1/3S');
f_input = input('Ingrese la funcion: ', 's');
f = str2func(['@(x) ', f_input]);
disp('Ingrese el intervalo de integracion:');
a=input('intervalo A: ');
b=input('intervalo B: ');
n=input('Numero de particiones: ');
h=(b-a)/n;
x(1)=a;
x(n+1)=b;
s1=0;
s2=0;
for i=2:n
    x(i)=x(1)+(i-1)*h;
    if(mod(i,2)==0)
        s2=s2+f(x(i));
    else
        s1=s1+f(x(i));
    end
end
itg=(h/3)*(f(x(1))+(4*s1)+(2*s2)+f(x(n+1)));
disp(itg);
        
