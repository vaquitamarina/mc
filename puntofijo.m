f_input = input('Ingrese la funcion en la forma x = g(x): ', 's');
f = str2func(['@(x) ', f_input]);
x0 = input('Ingrese el disparo inicial: ');
e = input('Ingrese el error permisible: ');
num = input('Ingrese el numero de iteraciones: ');

for i= 1:num
  x1 = f(x0); 
  %fprintf('%d\t\t%.6f\n', n, x1);
  if abs(x1 - x0) < e
    fprintf('Convergencia alcanzada en %d iteraciones.\n', i);
    fprintf('Raiz: %d',x1);
    break;
  end
  x0 = x1;
end

if i == num
    disp('El método no convergió dentro del número máximo de iteraciones.');
end
