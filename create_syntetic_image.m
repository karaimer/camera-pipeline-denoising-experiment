close all
clear all


% Create sample 16 bit image.
rows = 3112;
columns = 4216;
ramp = linspace(1, 65535, 20);
pixel_values = linspace(1, 4216, 6);
% grayImage = uint16(repmat(ramp, [rows, 1]));
grayImage = uint16(repmat(ramp, [rows, 1]));
image = zeros(rows, columns, 3); 


image(:,1:pixel_values(2),:) = ramp(4);
image(:,pixel_values(2):pixel_values(3),:) = ramp(5);
image(:,pixel_values(3):pixel_values(4),:) = ramp(6);
image(:,pixel_values(4):pixel_values(5),:) = ramp(7);
image(:,pixel_values(5):pixel_values(6),:) = ramp(8);

img8 = uint8(image / 256);
figure, imshow(img8);

imwrite(img8,'.\images\syntetic_image.tif');