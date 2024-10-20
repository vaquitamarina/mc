f_input = input('Ingrese la funcion: ', 's');
f = str2func(['@(x) ', f_input]);
a = input('Ingrese el limite inferior del intervalo: ');
b = input('Ingrese el limite supeior del intervalo: ');

for i=1:20
  if(f(a)*f(b) <= 0)
    break;
  end
  if(f(a) * f(b) > 0)
    fprintf('Ingrese otros limites.\n');
    a = input('Ingrese el limite inferior del intervalo: ');
    b = input('Ingrese el limite supeior del intervalo: ');
  end
end

if i == 20
  error('No se encontro la raiz en 20 iteraciones');
end

e = input('Ingrese el error permisible: ');

k = 0;
while k == 0
  c = (a+b)/2;
  if f(a)*f(c) <= 0
    if f(a) * f(c) == 0
      if f(a) == 0
        r = a;
      else
        r = c;
      end
      r
      k = 1;
    else
      b = c;
    end
  else
    a = c;
  end
  if k == 0
    if abs(b-a) < e
      r = (a+b)/2;
      k = 1;
    end
  end
end

fprintf('\n\n la raiz es %f\n\n',r);
