close all
clear all

noisydata1 = imread('.\images\syntetic_image_noisy_result_s5_run_through_pipeline8bit_denoiseds13.tif');
original1 = imread('.\images\syntetic_image_run_through_pipeline8bit.tif');

noisydata2 = imread('.\images\syntetic_image_noisy_result_s5_denoised_run_through_pipe8bit.tif');

noisydata3 = imread('.\images\syntetic_image_noisy_result_s5_run_through_pipeline8bit.tif');

% SNR(noisydata1, original1)
% SNR(noisydata2, original1)

[peaksnr1, snr1] = psnr(noisydata1, original1);

fprintf('\n 1The Peak-SNR value is %0.4f', peaksnr1);
fprintf('\n 1The SNR value is %0.4f \n', snr1);

[peaksnr2, snr2] = psnr(noisydata2, original1);

fprintf('\n 2The Peak-SNR value is %0.4f', peaksnr2);
fprintf('\n 2The SNR value is %0.4f \n', snr2);


[peaksnr3, snr3] = psnr(noisydata3, original1);

fprintf('\n 3The Peak-SNR value is %0.4f', peaksnr3);
fprintf('\n 3The SNR value is %0.4f \n', snr3);

[peaksnr4, snr4] = psnr(original1, original1);

fprintf('\n 4The Peak-SNR value is %0.4f', peaksnr4);
fprintf('\n 4The SNR value is %0.4f \n', snr4);
