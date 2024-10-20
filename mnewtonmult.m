f_input = input('Ingrese las funciones, ej: [x(1)^2 + x(2)^2 - 1;x(1)^2 - x(2)]', 's');
f = str2func(['@(x) ', f_input]);

j_input = input('Ingrese las derivadas de las funciones, ej: [2*x(1), 2*x(2);2*x(1), -1]', 's');
j = str2func(['@(x) ', j_input]);

x0 = input('Introduce un vector inicial [x0, y0] (por ejemplo, [1, 0.5]): ');

e = input('Introduce la tolerancia (por ejemplo, 1e-6): ');
num = input('Introduce el número máximo de iteraciones: ');

for i = 1:num
  F_x = f(x0);
  J_x = j(x0);
  dx = -J_x \ F_x;  
  x1 = x0 + dx';
  if norm(dx, inf) < e
    fprintf('Convergencia alcanzada en %d iteraciones.\n', i);
    fprintf('Solución aproximada: [x, y] = [%d, %d]\n', x1(1), x1(2));
    break;
  end  
  x0 = x1;
end

if(i == num)
  disp('El método no convergió dentro del número máximo de iteraciones.');
end
