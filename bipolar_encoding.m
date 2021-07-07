n=8;
prompt = 'Enter ';
Y = input(prompt)
g = round((Y+n)/2)
Z = zeros(1,n);
Z(1:g)=1;
Z = Z(randperm(numel(Z)))