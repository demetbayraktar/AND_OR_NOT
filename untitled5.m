 
    prompt = 'Enter '; %requests number of ones from the user
    X = input(prompt) %Getting the number of ones from the user
    A = zeros(1,n); %putting all zeros inside the stream
    A(1:X)=1; %putting the input we get from the user inside the stream
    

    prompt2 = 'Enter ';%requests number of ones from the user
    Y = input(prompt2) %Getting the number of ones from the user
    B = zeros(1,m); % %putting all zeros inside the stream
    B(1:Y)=1; %putting the input we get from the user inside the stream
max_corrolation = max(A,B)
min_corrolation = min(A,B)