
N = 8; %define the stream size

%requests first number from the user
prompt = 'Enter the first number ';
X1 = input(prompt)
%requests second number from the user
prompt2 = 'Enter the second number ';
X2 = input(prompt2)

a_max = min(X1,X2) 
b_min = X1-a_min
c_min = X2-a_min
d_max =min((N-X1),(N-X2))

a_min = max(0,X1+X2-N)
b_max = X1-a_min
c_max= X2-a_min
d_min= max(0,N-(X1+X2))

variable = input('If you want to see maximum correlation type 1\nIf you want to see minimum, type 2\n  ')

if variable == 1
    disp(a_max);
elseif variable == 2
    disp(a_min);
end
 









