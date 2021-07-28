
A = imread('sample.jpg'); %input image

%convert RGB image into grayscale
I = rgb2gray(A);
subplot(121), imshow(I), title('Original Image') %display grayscale image

F = int8([-1 -1 -1;0 0 0;1 1 1]); %define the filter

%pad the matrix with all zeros on all sides
B = int8(padarray(I,[1 1]));
Output = uint8(zeros(size(I)));

for i = 1:size(B,1)-2
    for j = 1:size(B,2)-2
        X = B(i:i+2,j:j+2).*F;
        Output(i,j) = sum(X(:));
    end
end

subplot(122), imshow(Output), title('Fltered Image') %display filtered image