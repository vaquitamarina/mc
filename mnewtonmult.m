clc
clear 
n = input('Ingrese el numero de variables: ');
f_input = input('Ingrese las funciones, ej: [x1^2 + x2^2 - 1;x1^2 - x2]:  ', 's');

v = sym('x',[1 n]);

f_sym = str2sym(f_input);
j_sym = jacobian(f_sym, v);


e = input('Introduce la tolerancia: ');
num = input('Introduce el numero maximo de iteraciones: ');
x0 = input('Ingrese el disparo inicial: ');
for i = 1:num
  F_x = subs(f_sym,v,x0);
  J_x = subs(j_sym,v,x0);
  dx = -J_x \ F_x;  
  x0 = x0 + dx';
  if norm(dx, inf) < e
    fprintf('Solucion aproximada:\n');
    fprintf('%.10f\n', x0);
    break;
  end  
end

if(i == num)
  disp('El metodo no convergio dentro del numero maximo de iteraciones.');
end
