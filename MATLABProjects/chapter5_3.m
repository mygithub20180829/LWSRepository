f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\moon.tif');
w=fspecial('laplacian',0);
g1 =  imfilter(f,w,'replicate');
subplot(131);imshow(g1,[]);
f2=im2double(f);
g2=imfilter(f2,w,'replicate');
subplot(132);imshow(g2,[]);
g=f2-g2;
subplot(133);imshow(g);