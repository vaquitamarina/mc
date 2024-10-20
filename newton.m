f_input = input('Ingrese la funcion: ', 's');
f_sym = str2sym(['@(x) ', f_input]);
e = input('Ingrese el error permisible: ');
x0 = input('Ingrese el disparo inicial: ');
num = input('Ingrese el numero maximo de iteraciones: ');

syms x
df_sym = diff(f_sym(x), x);

f = matlabFunction(f_sym);
df = matlabFunction(df_sym);

for i=1:num
  x1 = x0 - (f(x0)/df(x0));
  if(abs(x1-x0)<e)
    fprintf('Convergencia alcanzada en %d iteraciones.\n', i);
    fprintf('Raiz: %d',x1);
    break;
  end
end

if i == num
  fprintf('El metodo no converge en %d iteraciones.\n', num);
end


