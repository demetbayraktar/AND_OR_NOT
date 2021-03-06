%It is a discrete differentiation gradient-based operator.
%It computes the gradient approximation of image intensity function for image edge detection
%At the pixels of an image, the Sobel operator produces either the normal
%to a vector or the corresponding gradient vector
%It uses two 3 x 3 kernels or masks which are convolved with the input image 
%to calculate the vertical and horizontal derivative approximations

A = imread('sample.jpg'); %read the input image

%convert RGB image into grayscale
I = rgb2gray(A);
subplot(221),imshow(I),title('Original Image'); %display grayscale image

%Filter for y direction
F1 = int8([-1 0 1;-2 0 2;-1 0 1]);
%Filter for x direction
F2 = int8([-1 -2 -1;0 0 0;1 2 1]);
%pad the matrix with all zeros on all sides
B = int8(padarray(I,[1 1]));
Output = uint8(zeros(size(I)));

for i = 1:size(B,1)-2
    for j = 1:size(B,2)-2
        
        %gradient operators
        X1 = sum(sum(B(i:i+2,j:j+2).*F1));
        X2 = sum(sum(B(i:i+2,j:j+2).*F2));
        
        %magnitude of vector
        Output(i+1,j+1)= sqrt(X1.^2+X2.^2); %
    end
    
end

subplot(222),imshow(Output),title('Filtered Image'); %display filtered image


Thresh = 210;
Y = max(Output,Thresh);
Y(Y==round(Thresh))=0;
Y=im2bw(Y);
subplot(223),imshow(Y),title('Edge detected image');


