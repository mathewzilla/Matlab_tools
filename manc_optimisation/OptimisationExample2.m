clear
n=5000;
a=rand(n,n);
b=rand(n,n);
c=zeros(n,n);

disp('Column wise')
tic
for k=1:n
    for j=1:n
        c(j,k)=a(j,k)*b(j,k);
    end
end
toc

% Repeat with k and j loops swapped
disp('Row wise')
tic
for j=1:n
    for k=1:n
        c(j,k)=a(j,k)*b(j,k);
    end
end
toc