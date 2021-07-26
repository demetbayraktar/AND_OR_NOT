%getting the first number from a user
X1  = input('Enter the first number '); 
%getting the second number from a user
X2 = input('Enter the second number ');


N = 8; %define the stream size

a_max = min(X1,X2);%maxiumum pair of 11's
a_min = max(0,X1+X2-N); %minimum pair of 11's
a_mid = floor((a_max + a_min)/2) %middle point approximation


%getting input from user
variable = input('If you want to see maximum correlation type\nIf you want to see minimum correlation type 2\nIf you want to see mid point, type 3\nType: ');

%for and operation
for y = (X1&X2)
    if variable == 1
        disp(a_max);
    elseif variable ==2
        disp(a_min);
    elseif variable==3
        disp(a_mid);
    end
end

