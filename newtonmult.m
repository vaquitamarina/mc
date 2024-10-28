f_input = input('Ingrese las funciones, ej: [x(1)^2 + x(2)^2 - 1;x(1)^2 - x(2)]: ', 's');
f = str2func(['@(x) ', f_input]);

j_input = input(['Ingrese las derivadas de las funciones, ej: [2*x(1), 2*x(2);2*x(1), -1]: '], 's');
j = str2func(['@(x) ', j_input]);

x0 = input('Introduce el vector inicial [x0 y0] (por ejemplo, [1 0.5]): ');

e = input('Introduce el error permisible: ');
num = input('Introduce el numero maximo de iteraciones: ');

for i = 1:num
  f_eval = f(x0);
  j_eval = j(x0);
  dx = -j_eval \ f_eval;  
  x0 = x0 + dx';
  if norm(dx, inf) < e
    fprintf('Convergencia alcanzada en %d iteraciones.\n', i);
    fprintf('Raiz:');
    x0
    break;
  end  
end

if(i == num)
  disp('El método no convergió dentro del número máximo de iteraciones.');
end

