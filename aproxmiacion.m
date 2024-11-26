clc;
clear;

n = input('Ingrese el número de datos a ingresar: ');
m = input('Ingrese el grado del polinomio: ');
ys = 0;

for i = 1:n
    fprintf('Ingrese el valor de x(%d): ', i);
    x(i) = input('');
    fprintf('Ingrese el valor de y(%d): ', i);
    y(i) = input('');
    ys = ys + y(i);
end

for k = 0:2*m
    s(k+1) = 0; 
    for i = 1:n
        s(k+1) = s(k+1) + x(i)^k; 
    end
end

for k = 0:m
    c(k+1) = 0;
    for i = 1:n
        c(k+1) = c(k+1) + (x(i)^k) * y(i);
    end
end

for i = 1:m+1
    for j = i:m+1
        d(i, j) = s(i+j-1); 
    end
    d(j,i) = d(i,j);
end

a = d \ c'; 

fprintf('y = %.4f', a(1));
for i = 2:m+1
    fprintf(' + %.4f*x^%d', a(i), i-1);
end
fprintf('\n');

sm = 0;
sr = 0;
yr = ys/n; 
for i = 1:n
    sm = sm + (y(i) - yr)^2;
    yp = 0;
    for k = 0:m
        yp = yp + a(k+1) * x(i)^k;
    end
    sr = sr + (y(i) - yp)^2;
end

rr = (sm-sr)/sm; 
r = sqrt(rr);       

fprintf('Coeficiente de determinación (R^2): %.4f\n', rr);
fprintf('Coeficiente de correlación (R): %.4f\n', r);
