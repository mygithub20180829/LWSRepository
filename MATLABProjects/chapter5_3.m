f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\moon.tif');
w=fspecial('laplacian',0);
g1 =  imfilter(f,w,'replicate');
subplot(131);imshow(g1,[]);
f2=im2double(f);
g2=imfilter(f2,w,'replicate');
subplot(132);imshow(g2,[]);
g=f2-g2;
subplot(133);imshow(g);