f_input = input('Ingrese las funciones, ej: [x(1)^2 + x(2)^2 - 1;x(1)^2 - x(2)]', 's');

v = sym('x', [1 n]);
f_sym = str2sym(f_input);
j_sym = jacobian(f_sym, v);


x0 = input('Introduce un vector inicial [x0 y0] (por ejemplo, [1 0.5]): ');

e = input('Introduce el maximo error permisible: ');
num = input('Introduce el número máximo de iteraciones: ');

for i = 1:num
  F_x = subs(f_sym,v,x0);
  J_x = subs(j_sym,v,x0);
  dx = -J_x \ F_x;  
  x0 = x0 + dx';
  if norm(dx, inf) < e
    fprintf('Convergencia alcanzada en %d iteraciones.\n', i);
    fprintf('Solucion aproximada: ');
    x0
    break;
  end  
end

if(i == num)
  disp('El método no convergió dentro del número máximo de iteraciones.');
end
