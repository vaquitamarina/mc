f_input = input('Ingrese la funcion en la forma x = g(x): ', 's');
f = str2func(['@(x) ', f_input]);
x0 = input('Ingrese el disparo inicial: ');
e = input('Ingrese el error permisible: ');
num = input('Ingrese el numero de iteraciones: ');

k = 0;
i = 1;

while k == 0
  x1 = f(x0);
  if abs(x1 - x0) < e
    r = x1;
    fprintf('La raiz es: \n' );
    r
    k = 1;
  else
    if i < num
      i = i + 1;
      x0 = x1;
    else
      fprintf('El metodo no convergio en %d iteraciones\n', num);
      k = 1;
    end
  end
end

