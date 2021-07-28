
A = imread('sample.jpg'); %Input Image

%convert RGB image into grayscale
I = rgb2gray(A);
subplot(221), imshow(I); title('Original Image');


%Add noise to grayscale image
In = imnoise(I,'speckle',0.05);;
subplot(222),imshow(In);title('Image with speckle noise');

%define filter sizes mxn
m=3;
n=3;

%pad the matrix with all zeros on all sides
B = int8(padarray(In,[1 1]));
Output = uint8(zeros(size(In)));

for i = 1:size(B,1)-(m-1)
    for j = 1:size(B,2)-(n-1)
        
        X = B(i:i+(m-1),j:j+(n-1));
        
        Output(i,j) = median(X(:));
        
    end
end


subplot(223),imshow(Output),title('Filtered Image'); %display filtered image
