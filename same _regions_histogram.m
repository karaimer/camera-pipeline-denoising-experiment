close all
clear all


stage11= im2double(imread('.\images\syntetic_image_noisy_result_s5_run_through_pipeline8bit.tif'));
stage4 = im2double(imread('.\images\syntetic_image_noisy_result_s5.tif'));
[stage11_crop, rect] = imcrop(stage11);
figure, imshow(stage11);
figure, imshow(stage4);
% imhist(I(rect(1):rect(1)+rect(3),rect(2):rect(2)+rect(4),:))
stage11_croped = stage11(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
stage4_croped = stage4(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
figure, imshow(stage11_croped);
ylim([0 400]);
figure, imshow(stage4_croped);
ylim([0 400]);
figure, imhist(stage11_croped(:,:,1))
ylim([0 400]);
figure, imhist(stage4_croped(:,:,1))
ylim([0 400]);
figure, imhist(stage11_croped(:,:,2))
ylim([0 400]);
figure, imhist(stage4_croped(:,:,2))
ylim([0 400]);
figure, imhist(stage11_croped(:,:,3))
ylim([0 400]);
figure, imhist(stage4_croped(:,:,3))
ylim([0 400]);
