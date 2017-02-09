pkg load image
i = 1;
im = imread('coins.png');
G = rgb2hsv(im);
G = G(:,:,3);
im_original = G;
#imshow(im), title('Original'), figure, imshow(im_original), title('Gray');



#criando as versoes ruidosas
vsp1 = imnoise(im_original, "salt & pepper", 0.06); %imagem 1
vsp2 = imnoise(im_original, "salt & pepper", 0.005); %imagem 2
vg1 = imnoise(im_original, "gaussian", 0, 0.001); %imagem 3
vg2 = imnoise(im_original, "gaussian", 0, 0.03); %imagem 4

F1 = fspecial('average', 3);
F2 = fspecial('average', 5);
F3 = fspecial('average', 7);



%filtros na vsp1
a = imfilter(vsp1, F1);
b = imfilter(vsp1, F2);
c = imfilter(vsp1, F3);
A1 = medfilt2(vsp1,[3 3]);
A2 = medfilt2(vsp1,[5 5]);
A3 = medfilt2(vsp1,[7 7]);


error=im_original-a; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-A1; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("Imagem %d:\nM = 3, PSNRs: Average:%d, median:%d\n", i, PSNR, psnr);

error=im_original-b; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-A2; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 5, PSNRs: Average:%d, median:%d\n",PSNR, psnr);

error=im_original-c; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-A3; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 7, PSNRs: Average:%d, median:%d\n",PSNR, psnr);



%filtros na vsp2
e = imfilter(vsp2, F1);
f = imfilter(vsp2, F2);
g = imfilter(vsp2, F3);
B1 = medfilt2(vsp2,[3 3]);
B2 = medfilt2(vsp2,[5 5]);
B3 = medfilt2(vsp2,[7 7]);
i++;
error=im_original-e; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-B1; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("Imagem %d:\nM = 3, PSNRs: Average:%d, median:%d\n", i, PSNR, psnr);

error=im_original-f; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-B2; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 5, PSNRs: Average:%d, median:%d\n",PSNR, psnr);

error=im_original-g; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-B3; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 7, PSNRs: Average:%d, median:%d\n",PSNR, psnr);



%filtros na vg1
a = imfilter(vg1, F1);
b = imfilter(vg1, F2);
c = imfilter(vg1, F3);
A1 = medfilt2(vg1,[3 3]);
A2 = medfilt2(vg1,[5 5]);
A3 = medfilt2(vg1,[7 7]);
i++;
error=im_original-a; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-A1; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("Imagem %d:\nM = 3, PSNRs: Average:%d, median:%d\n", i, PSNR, psnr);

error=im_original-b; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-A2; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 5, PSNRs: Average:%d, median:%d\n",PSNR, psnr);

error=im_original-c; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-A3; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 7, PSNRs: Average:%d, median:%d\n", PSNR, psnr);



%filtros na vg2
e = imfilter(vg2, F1);
f = imfilter(vg2, F2);
g = imfilter(vg2, F3);
B1 = medfilt2(vg2,[3 3]);
B2 = medfilt2(vg2,[5 5]);
B3 = medfilt2(vg2,[7 7]);
i++;
error=im_original-e; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-B1; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("Imagem %d:\nM = 3, PSNRs: Average:%d, median:%d\n",i, PSNR, psnr);

error=im_original-f; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-B2; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 5, PSNRs: Average:%d, median:%d\n", PSNR, psnr);

error=im_original-g; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
PSNR = 10*log10(255^2/MSE); %valor em dB
error=im_original-B3; %imagem de erro
MSE=mean(error(:).^2); %error(:) eh um vetor
psnr = 10*log10(255^2/MSE); %valor em dB
printf("M = 7, PSNRs: Average:%d, median:%d\n",PSNR, psnr);