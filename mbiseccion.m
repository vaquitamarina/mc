clc
clear

f_input = input('Ingrese la funcion: ', 's');
f = str2func(['@(x) ', f_input]);
la = input('Ingrese el limite inferior del intervalo: ');
lb = input('Ingrese el limite supeior del intervalo: ');
e = input('Ingrese el error permisible: ');

k = 0;

while (f(la) * f(lb) > 0)
    fprintf('Error. Ingrese otros limites.\n');
    a = input('Ingrese el limite inferior del intervalo: ');
    b = input('Ingrese el limite supeior del intervalo: ');
end

for i=la:5:lb
  a = i;
  b = i+5;
  if f(a)*f(b) <= 0
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
  end
  if k == 1
    break;
  end
end

if (f(r) < e) && (-e < f(r))
    fprintf('\n\n la raiz es %f\n\n',r);
else
    fprintf('\n\n Es una asintota %f\n\n',r);
end
