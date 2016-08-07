%%Project 2 
% Marc Abou Jaoude

image1 = imread('pic1.jpg');
image2 = imread('pic2.jpg');
image3 = imread('pic3.jpg');
image4 = imread('pic4.jpg');
image5 = imread('pic5.jpg');

mat = 255 * ones(720,820,3,'uint8');

pic1 = imresize(image1,[400 300]);
pic2 = imresize(image2, [408 408]);
pic3 = imresize(image3, [210 314]);
pic4 = imresize(image4, [267 200]);
pic5 = imresize(image5, [166 250]);

mat(1:400, 51:350, :) = pic1;
mat(1:408, 400:807, :) = pic2;
mat(450:659, 51:364, :) = pic3;
mat(450:716, 500:699, :) = pic4;

x = 165;
row = 358;
col = 433;
for i = -x:x
    y = round(sqrt(x^2 - i^2));
    mat(row-y:row+y,col+i,:) = 255;
end
mat(270:435,300:549,:) = pic5;
imshow(mat);