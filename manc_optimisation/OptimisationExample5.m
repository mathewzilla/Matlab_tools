clear
n=5000;

% Note: these loops are required to produce measurable times
disp('Converting doubles to int8')
tic
for j=1:n
    A=int8(zeros(n));
end
toc

disp('Creating int8 from scratch')
tic
for j=1:n
    A=zeros(n,'int8');
end
toc