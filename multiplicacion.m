m = input('Ingrese el numero de columnas de la primera matriz: ');
n = input('Ingrese el numero de filas de la primera matriz: ');
p = input('Ingrese el numero de columnas de la segunda matriz: ');
q = input('Ingrese el numero de filas de la segunda matriz: ');

if(n==p)
    for i=1:m
        for j=1:n
            fprintf('Ingrese el valor de A(%d)(%d): ', i,j);
            a(i,j) = input('');
        end
    end
    for i=1:p
        for j=1:q
            fprintf('Ingrese el valor de B(%d)(%d): ', p,q);
            b(i,j) = input('');
        end
    end
    for i=1:m
        for j=1:q
            c(i,j) = 0;
            for k=1:n
                c(i,j) = c(i,j) + (a(i,k) * b(k,j));
            end
        end
    end
    c
end
