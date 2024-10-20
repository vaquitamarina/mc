n = input('Ingrese el orden de las matrices: ');
for i=1:n
  for j=1:n
    fprintf('Ingrese el valor de A(%d)(%d): ', i,j);
    a(i,j) = input('');
  end
end

for i=1:n
  for j=1:n
    fprintf('Ingrese el valor de B(%d)(%d): ', i,j);
    b(i,j) = input('');
  end
end

for i=1:n
  for j=1:n
    c(i,j) = a(i,j) + b(i,j);
  end
end

fprintf('La matriz resultante es:\n');
c
