close all
clear all

image = im2double(imread('.\images\syntetic_image_noisy_result_s5_denoised_run_through_s5_16bit.tif'));
image = image.^(1/2.2);

img8 = uint8(image * 255);
figure, imshow(img8);

% img8 = im2double(img8).^(1/2.2);
imwrite(img8,'.\images\syntetic_image_noisy_result_s5_denoised_run_through_s5_8bit_gamma.tif');