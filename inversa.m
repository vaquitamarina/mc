n = input('Ingrese el orden de la matriz: ');

for i=1:n
    for j=1:n
        fprintf('Ingrese el valor de A(%d)(%d): ', i,j);
        a(i,j) = input('');
    end
end

if (det(a) ~= 0)
  for i=1:n
    for j=i:n
      if i == j
        c(i,j) = 1;
      else
        c(i,j) = 0;
      end
    end
  end

  for i=1:n
    %division entre 0
    if a(i,i) == 0
      for j=1:n
        a(i,j) = a(i,j) + a(i+1,j);
      end
    end

    p = a(i,i);
    for j=i:n
      a(i,j) = a(i,j) / p;
    end
    for j=1:n
      c(i,j) = c(i,j) / p;
    end
    for j=1:n
      if (j ~= i)
        f = -a(j,i);
        for k=i:n
          a(j,k) = a(j,k) + (f * a(i,k));
        end
        for k=1:n
          c(j,k) = c(j,k) + (f * c(i,k));
        end
      end
    end
  end
  c
else
  fprintf('La matriz no tiene inversa\n');
end
