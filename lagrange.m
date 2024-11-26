clc;
clear;

n= input('Ingrese el grado del polinomio: ');
xr= input('Ingrese el valor a interpolar: ');


for i=1:1:n+1
    fprintf('x(%d): ',i);
    x(i)=input('');
    fprintf('y(%d): ',i);
    y(i)=input('');
end

yr=0;

for j=1:1:n+1
    nl=1;
    dl=1;
    i=1;
    while i<=n+1
        if (i~=j) || (j~=n+1)
            if (i==j)
                i=i+1;
            end
            nl=nl*(xr-x(i));
            dl=dl*(x(j)-x(i));
        end
        i=i+1;
    end
    yr=yr+ (nl/dl)*y(j);
end

fprintf('El valor interpolado en x = %d, es: %d', xr, yr);
