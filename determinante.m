n = input('Ingrese el orden de la matriz: ');

for i=1:n
  for j=1:n
    fprintf('Ingrese el valor de A(%d)(%d): ', i,j);
    a(i,j) = input('');
  end
end

d = 1;

for i=1:n-1
  d = d * a(i,i);
  p = a(i,i);
  for j=i:n
    a(i,j) = a(i,j)/p;
  end
  for j=i+1:n
    f=-a(j,i);
    for k=i:n
      a(j,k) = a(j,k) + (f * a(i,k));
    end
  end
end
d = d * a(n,n);

d
