close all
clear all

% this loads denoised stage 4 image. 
% then converts it to the txt file version.
% this way my pipeline can read it, and run through the pipeline. 
stage4_image = im2double(imread('.\images\syntetic_image.tif')); %image; %

dlmwrite('.\images\syntetic_image\r.txt',stage4_image(:,:,1),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\syntetic_image\g.txt',stage4_image(:,:,2),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\syntetic_image\b.txt',stage4_image(:,:,3),'delimiter',' ', 'precision','%.6f');


stage4_imagen = im2double(imread('.\images\syntetic_image_noisy_result_s5.tif')); %image; %

dlmwrite('.\images\syntetic_image_noisy_result_s5\r.txt',stage4_imagen(:,:,1),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\syntetic_image_noisy_result_s5\g.txt',stage4_imagen(:,:,2),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\syntetic_image_noisy_result_s5\b.txt',stage4_imagen(:,:,3),'delimiter',' ', 'precision','%.6f');


stage4_imagem = im2double(imread('.\images\syntetic_image_noisy_result_s5_denoised.tif')); %image; %

dlmwrite('.\images\syntetic_image_noisy_result_s5_denoised\r.txt',stage4_imagem(:,:,1),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\syntetic_image_noisy_result_s5_denoised\g.txt',stage4_imagem(:,:,2),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\syntetic_image_noisy_result_s5_denoised\b.txt',stage4_imagem(:,:,3),'delimiter',' ', 'precision','%.6f');
