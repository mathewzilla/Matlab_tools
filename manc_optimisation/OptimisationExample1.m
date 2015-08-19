clear
n=10000000;

disp('Without preallocation')
tic
for j=1:n
    C(j)=randn;
end
toc

clear C

% Repeat with preallocated C
disp('With preallocation')
tic
C=zeros(1,n);
for j=1:n
    C(j)=randn;
end
toc
