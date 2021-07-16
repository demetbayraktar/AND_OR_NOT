
%getting the first number from a user
X1  = input('Enter the first number '); 
%getting the second number from a user
X2 = input('Enter the second number ');


N = 8; %define the stream size

a_max = max(X1,X2)%maxiumum pair of 11's
a_min = X1+X2; %minimum pair of 11's
y = or(X1,X2)
%getting input from user
variable = input('If you want to see maximum correlation type 1\nIf you want to see minimum correlation type 2\nType: ');

%for and operation
for y = or(X1,X2)
    if variable == 1
        disp(a_max);
    elseif variable ==2
        disp(a_min);
    end
end

        
    
