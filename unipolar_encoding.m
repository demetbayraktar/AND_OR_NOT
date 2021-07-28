n=8; %stream size

%requests number of ones from the user
prompt = 'Enter '; 

%Getting the number of ones from the user
X = input(prompt) 

%put all zeros inside the stream
A = zeros(1,n); 

%put the input we get from the user
A(1:X)=1; 
UPE = X/n;


%n-bit stochastic number by BPU
A = A(randperm(numel(A)))


 

