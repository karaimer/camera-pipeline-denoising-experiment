close all
clear all

% this loads denoised stage 4 image. 
% then converts it to the txt file version.
% this way my pipeline can read it, and run through the pipeline. 
stage4_image = im2double(imread('.\images\syntetic_image.tif')); %image; %

% save image as binary file 
fd = fopen('.\images\syntetic_image\r.txt','w');
    fwrite(fd,stage4_image(:,:,1)','double');
    fclose(fd);
    
fd2 = fopen('.\images\syntetic_image\g.txt','w');
    fwrite(fd2,stage4_image(:,:,2)','double');
    fclose(fd2);
    
fd3 = fopen('.\images\syntetic_image\b.txt','w');
    fwrite(fd3,stage4_image(:,:,3)','double');
    fclose(fd3);


stage4_imagen = im2double(imread('.\images\syntetic_image_noisy_result_s5.tif')); %image; %

% save image as binary file 
fd = fopen('.\images\syntetic_image_noisy_result_s5\r.txt','w');
    fwrite(fd,stage4_imagen(:,:,1)','double');
    fclose(fd);
    
fd2 = fopen('.\images\syntetic_image_noisy_result_s5\g.txt','w');
    fwrite(fd2,stage4_imagen(:,:,2)','double');
    fclose(fd2);
    
fd3 = fopen('.\images\syntetic_image_noisy_result_s5\b.txt','w');
    fwrite(fd3,stage4_imagen(:,:,3)','double');
    fclose(fd3);

stage4_imagem = im2double(imread('.\images\syntetic_image_noisy_result_s5_denoised.tif')); %image; %

% save image as binary file 
fd = fopen('.\images\syntetic_image_noisy_result_s5_denoised\r.txt','w');
    fwrite(fd,stage4_imagem(:,:,1)','double');
    fclose(fd);
    
fd2 = fopen('.\images\syntetic_image_noisy_result_s5_denoised\g.txt','w');
    fwrite(fd2,stage4_imagem(:,:,2)','double');
    fclose(fd2);
    
fd3 = fopen('.\images\syntetic_image_noisy_result_s5_denoised\b.txt','w');
    fwrite(fd3,stage4_imagem(:,:,3)','double');
    fclose(fd3);
