close all

%Lê a imagem
im = imread('Lenna.png');
imagesc(im); colormap (gray); title('Imagem Original'); 

%Faz a transformada de  Fourier
img   = fftshift(im(:,:,2));  % centraliza a  FFT
imfft    = fft2(img); 

%Mostra o espectro da magnitude (log)
immag = 100*log(1+abs(fftshift(imfft)));
figure;
imagesc(immag); colormap(gray); 
title('espectro da magnitude');

%Mostra o espectro da fase
imang = angle(imfft);
figure;
imagesc(imang);  colormap(gray);
title('espectro de fase');


%Faz a Transformada Inversa
im = ifft2(imfft);
im =  ifftshift(im);
figure;
imagesc(abs(im));  colormap(gray);