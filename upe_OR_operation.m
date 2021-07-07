for n=8; %define the stream size
prompt = 'Enter '; %requests number of ones from the user
X = input(prompt) %Getting the number of ones from the user
A = zeros(1,n); %putting all zeros inside the stream
A(1:X)=1; %putting the input we get from the user inside the stream
PA = X/n; %probability of A
A = A(randperm(numel(A)))
break %now we get another value from the user
end  %end the first operation
 for m=8; %define the stream size
prompt2 = 'Enter ';%requests number of ones from the user
Y = input(prompt2) %Getting the number of ones from the user
B = zeros(1,m); % %putting all zeros inside the stream
B(1:Y)=1; %putting the input we get from the user inside the stream
PB = Y/m; %probability of B
B = B(randperm(numel(B))) 
 end %end of the second operation
    C = A | B  %OR operation
    PC = PA+PB-(PA*PB) %output probability