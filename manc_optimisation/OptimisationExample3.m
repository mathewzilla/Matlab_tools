
clear
n=50000000;
c=zeros(1,n);

disp('With loops')
tic
for j=1:n
    c(j)=randn;
end
toc

disp('With arrays')
clear c
tic
c=randn(1,n);
toc