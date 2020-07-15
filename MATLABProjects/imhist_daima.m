f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\lena.tif');
% subplot(121);title('原图像');imshow(f);
% subplot(122);title('灰度直方图');imhist(f);

% h=imhist(f);
% h1=h(1:10:256);
% horz=1:10:256;
% bar(horz,h1);
% axis([0 255 0 3000]);
% set(gca,'xtick',0:50:255);
% set(gca,'ytick',0:500:3000);

% h=imhist(f);
% h1=h(1:10:256);
% horz=1:10:256;
% stem(horz,h1,'r--s','fill')
% axis([0 255 0 3000]);
% set(gca,'xtick',0:50:255);
% set(gca,'ytick',0:500:3000);

% h=imhist(f);
% plot(h);
% axis([0 255 0 5000]);
% set(gca,'xtick',0:50:255);
% set(gca,'ytick',0:500:1500);

% f=imread('lena.jpg');
G=histeq(f);
subplot(221);imshow(f);
title('原始图像');
subplot(222);imshow(G);
title('图像均衡化');
subplot(223);imhist(f,256);
title('原图像的直方图');
subplot(224);imhist(G,256);
title('图像均衡化的直方图');