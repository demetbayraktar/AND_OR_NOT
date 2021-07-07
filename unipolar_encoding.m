 n=8; %stream size
prompt = 'Enter ';
X = input(prompt) %Getting the number of ones from the user
A = zeros(1,n); %puts all zeros
A(1:X)=1; %puts input we get
UPE = X/n;
A = A(randperm(numel(A)))


 

