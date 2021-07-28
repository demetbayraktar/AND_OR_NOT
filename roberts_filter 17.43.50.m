%This gradient-based operator computes the sum of squares
%of the differences between diagonally adjacent pixels in an image
%through discrete differentiation. Then the gradient approximation is made.
%It uses 2x2 masks


A = imread('sample.jpg'); %read the input image

%convert RGB image into grayscale
I = rgb2gray(A);
subplot(221),imshow(I),title('Original Image'); %display grayscale image

%Filter for y direction
F1 = int8([1 0;0 -1]);
%Filter for x direction
F2 = int8([0 1;-1 0]);
%pad the matrix with all zeros on all sides
B = int8(padarray(I,[1 1]));
Output = uint8(zeros(size(I)));

for i = 1:size(B,1)-1
    for j = 1:size(B,2)-1
        
        %gradient operators
        X1 = sum(sum(B(i:i+1,j:j+1).*F1));
        X2 = sum(sum(B(i:i+1,j:j+1).*F2));
        
        %magnitude of vector
        Output(i,j)= sqrt(X1.^2+X2.^2); %
    end
    
end

subplot(222),imshow(Output),title('Filtered Image'); %display filtered image


Thresh = 100;
Y = max(Output,Thresh);
Y(Y==round(Thresh))=0;
Y=im2bw(Y);
subplot(223),imshow(Y),title('Edge detected image');
       


