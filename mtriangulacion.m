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

for i=n:-1:2
  p = a(i,i);  
  for j=i:-1:1
    a(i,j) = a(i,j)/p;      
  end
  b(i) = b(i)/p; 
  for j=i-1:-1:1  
    f = -a(j,i);
    for k=i:-1:1
      a(j,k) = a(j,k) + f*a(i,k); 
    end
    b(j) = b(j) + f*b(i);  
  end
end

x(1) = b(1)/a(1,1);
for i=2:n
  s = 0;
  for j=1:i-1
    s = s + a(i,j)*x(j); 
  end
  x(i) = b(i) - s;  
end


fprintf('La solucion es: \n');
disp(x);
