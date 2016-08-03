close all
clear all

image = imread('.\images\syntetic_image_noisy_result_s5_run_through_pipeline16bit.tif');

img8 = uint8(image / 256);
figure, imshow(img8);

imwrite(img8,'.\images\syntetic_image_noisy_result_s5_run_through_pipeline8bit.tif');