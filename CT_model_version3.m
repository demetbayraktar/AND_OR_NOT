
%getting the first number from a user
X1  = input('Enter the first number '); 
X2 = input('Enter the second number ');


N = 8;
a_max = min(X1,X2);
b_min = X1-a_max;
c_min = X2-a_max;
d_max = min((N-X1),(N-X2));
a_min = max(0,X1+X2-N);
b_max = X1-a_min;
c_max = X2-a_min;
d_min = max(0,N-X1+X2);

variable = input('If you want to see maximum correlation type 1\nIf you want to see minimum correlation type 2\nType: ');

for y = X1&X2
    if variable == 1
        disp(a_max);
    elseif variable ==2
        disp(a_min);
    end
end

        
    

