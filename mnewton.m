f_input = input('Ingrese la funcion: ', 's');
f_sym = str2sym(['@(x) ', f_input]);
e = input('Ingrese el error permisible: ');
x0 = input('Ingrese el disparo inicial: ');
num = input('Ingrese el numero maximo de iteraciones: ');

syms x
df_sym = diff(f_sym(x), x);

f = matlabFunction(f_sym);
df = matlabFunction(df_sym);

i = 1;
k = 0;
while k == 0
  x1 = x0 - f(x0)/df(x0);
  if abs(x1 - x0) < e
    r = x1;
    k = 1;
    r
  else
    if i < num
      i = i + 1;
      x0 = x1;
    else
      k = 1;
      disp('El metodo no converge');
    end
  end
end

