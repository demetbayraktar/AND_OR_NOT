n=8; %stream size 

%requests number of ones from the user
prompt = 'Enter ';

%getting the number of ones from the user
Y = input(prompt) 

g = round((Y+n)/2) %BPU formula

%put all zeros inside the stream
Z = zeros(1,n);

%puts the input we get from the user
Z(1:g)=1;

%n-bit stochastic number by BPU
Z = Z(randperm(numel(Z)))