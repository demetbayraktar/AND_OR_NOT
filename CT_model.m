
prompt3 = 'Enter ';
a = input(prompt3)
for n=8; 
    
    %requests number of ones from the user
    prompt = 'Enter '; 
    
    %Gets the number of ones from the user
    X1 = input(prompt) 
   
    break %now we get another value from the user
    
end  %end of the first operation
 

for n=8; %define the stream size
    
    %requests number of ones from the user
    prompt2 = 'Enter ';
    
    %Gets the number of ones from the user
    X2 = input(prompt2) 
    
end %end of the second operation

X1 = a + b;
X2 = a + c;
d = n-(a + b + c);


if a>= 4
    a_max = min(X1,X2);
    b_min = X1-a_min;
    c_min = X2-a_min;
    d_max =round(min(n-X1),(n-X2));
elseif a <4
    a_min = max(0,X1+X-n);
    b_max = X1-a_min;
    c_max= X2-a_min;
    d_min= round(max(0,n-(X1+X2)));
end



