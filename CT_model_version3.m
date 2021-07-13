
%getting the first number from a user
X1  = input('Enter the first number '); 
%getting the second number from a user
X2 = input('Enter the second number ');


N = 8; %define the stream size

a_max = min(X1,X2);%maxiumum pair of 11's
b_min = X1-a_max; %minimum pair of 10's
c_min = X2-a_max; %minimum pair of 01's
d_max = min((N-X1),(N-X2)); %maximum pair of 00's
a_min = max(0,X1+X2-N); %minimum pair of 11's
b_max = X1-a_min; %maxiumum pair of 10's
c_max = X2-a_min; %maximum pair of 01's
d_min = max(0,N-X1+X2); %minimum pair of 00's

%getting input from user
variable = input('If you want to see maximum correlation type 1\nIf you want to see minimum correlation type 2\nType: ');

%for and operation
for y = X1&X2
    if variable == 1
        disp(a_max);
    elseif variable ==2
        disp(a_min);
    end
end

        
    

