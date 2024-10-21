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

for i=1:n-1
  p = a(i,i);
  for j=i:n
    a(i,j) = a(i,j)/p;
  end
  b(i) = b(i)/p;
  for j=i+1:n
    f = -a(j,i);
    for k=i:n
      a(j,k) = a(j,k) + f*a(i,k);
    end
    b(j) = b(j) + f*b(i);
  end
end

x(n) = b(n)/a(n,n);
for i=n-1:-1:1
  s = 0;
  for j=i+1:n
    s = s + a(i,j)*x(j);
  end
  x(i) = b(i) - s;
end

fprintf('La solucion es: \n');
x

