clc
clear
disp('Aproximacion polinomial');
n = input('Ingrese el numero de datos a ingresar: ');
m = input('Ingrese el grado del polinomio');
s = 0;
for i=1:n
    fprintf('Ingrese el valor de x(%d): ', i);
    x(i) = input('');
    fprintf('Ingrese el valor de y(%d): ', i);
    y(i) = input('');
    s = s + y(i);
end

for k=0:(2*m)
    s(k+1) = 0;
    for i=1:n
        s(k+1) = s(k+1) + (x(i)^k+1);
    end
end

for k=0:m
    c(k+1) = 0;
    for i=1:n
        c(k+1) = c(k+1) + (x(i)^k)*y(i);
    end
end

for i=1:m+1
    for j=i:m+1
        d(i, j) = s(i+j-1);
        d(j, i) = d(i,j);
    end
end

a = c/d;

fprintf('y = %d + ',a(1));
for i=2:m+1
   fprintf('%d x^(%d)+ ', a(i),i-1);
end

sm = 0;
sr = 0;
yr = 0;
for i=1:n
    
end
