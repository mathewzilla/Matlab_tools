clear
n=5000;
a=rand(n,n);
b=rand(n,n);
c=zeros(n,n);

disp('With loops')
tic
for k=1:n
    for j=1:n
        c(j,k)=a(j,k)*b(j,k);
    end
end
toc

disp('With arrays')
clear c
tic
c=a.*b;
toc
