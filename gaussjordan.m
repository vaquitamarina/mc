clc
clear

n = input('Ingrese el orden de la matriz: ');
for i=1:n
    for j=1:n
        fprintf('Ingrese el valor de A(%d)(%d): ', i,j);
        a(i,j) = input('');
    end
end

fprintf('Ingrese el vector: \n');
for i=1:n
    fprintf('Ingrese el valor de B(%d): ', i);
    b(i) = input('');
end

for i=1:n
    p = a(i,i);
    for j=1:n
        a(i,j) = a(i,j) / p;
    end
    b(i) = b(i) / p;
    for j=1:n
        if i~=j
            f = -a(j,i);
            for k=i:n
                a(j,k) = a(j,k) + f * a(i,k);
            end
            b(j) = b(j) + f * b(i);
        end
    end
end
fprintf('EL vector solucion es: \n');
b

