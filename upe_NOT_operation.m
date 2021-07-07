n=8; %define the stream size
prompt = 'Enter '; %requests number of ones from the user
X = input(prompt) %Getting the number of ones from the user
A = zeros(1,n); %putting all zeros inside the stream
A(1:X)=1; %putting the input we get from the user inside the stream
PA = X/n; %probability of A
A = A(randperm(numel(A))) %n-bits stochatics number
B = ~A %NOT Operation
PB= 1 - PA %output probability

