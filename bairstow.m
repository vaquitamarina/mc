clc
clear
n = input('Ingrese el grado del polinomio: ');
n = n + 1;

for i=1:n
    fprintf('Ingrese el coeficiente %d: ', n-i);
    a(i) = input('');
end
a

u = input('Ingrese el disparo inicial de u: ');
v = input('Ingrese el disparo incial de v: ');
er = input('Ingrese el error permisible: ');
num = input('Ingrese el numero maximo de iteraciones: ');
k = 1;
j = 1;
m = n;

while(n - 1> 2)
    if k > num
        u = input('Ingrese el disparo inicial de u: ');
        v = input('Ingrese el disparo incial de v: ');
    end
    b(1) = a(1);
    b(2) = a(2) + u*b(1);
    for i=3:n
        b(i) = a(i) + u*b(i-1) + v*b(i-2);
    end
    c(1) = b(1);
    c(2) = b(2) + u*b(1);
    for i=3:n-1
        c(i) = b(i) + u*c(i-1) + v*c(i-2);
    end

    d = (b(n) * c(n-3) - b(n-1) * c(n-2)) / (c(n-2)^2 - c(n-1) * c(n-3));
    e = (b(n-1) * c(n-1) - b(n) * c(n-2)) / (c(n-2)^2 - c(n-1) * c(n-3));
    
    u = u + d;
    v = v + e;

    if(abs(d) < er && abs(e) < er)
        x(j)=(u-((u^2)+4*v)^(0.5))/2;
        x(j+1)=(u+((u^2)+4*v)^(0.5))/2;
        j = j + 2;
        n = n - 2;
        for i=1:n
            a(i) = b(i);
        end
        disp('Ingrese nuevos valores iniciales para u y v:');
        u = input('Ingrese el disparo inicial de u: ');
        v = input('Ingrese el disparo incial de v: ');
        k = 1;
    else 
        k = k+1;
    end
end

if n - 1 > 1
    u = a(2);
    v = a(3);
    x(j)=(-u-((u^2)-4*v)^(0.5))/2;
    x(j+1)=(-u+((u^2)-4*v)^(0.5))/2;
else
    if n - 1 > 0
        x(j) = -b(2)/b(1);
    end
end

fprintf('Las raices son:\n');
x
