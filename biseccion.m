f_input = input('Ingrese la funcion: ', 's');
f = str2func(['@(x) ', f_input]);
a = input('Ingrese el limite inferior del intervalo: ');
b = input('Ingrese el limite supeior del intervalo: ');
e = input('Ingrese el error permisible: ');

if(f(a) * f(b) > 0)
    error('Ingrese otros limites.');
end

cont = 0;
while (abs(b-a)>e)
    m=(a+b)/2;
    if (f(a)*f(m)<0)
        b=m;
    end
    if (f(m)*f(b)<0)
        a=m;
    end
    if (abs(f(m))<eps)
        fprintf('\n la raiz es %f\n\n',m);
        return
    end
    cont=cont+1;
    fprintf('\n iteracion %d, intervalo[%f,%f]',cont,a,b);
end

fprintf('\n\n la raiz es %f\n\n',m);
