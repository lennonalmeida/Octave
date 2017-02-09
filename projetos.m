pkg load image
img = imread('projetos.png');
M = [0 -1 0, -1 5 -1, 0 -1 0]; #kernel para filtro de realce do contraste
show = imfilter (img, M);
imshow(img),title('Original')
figure, imshow (show), title('Contraste')