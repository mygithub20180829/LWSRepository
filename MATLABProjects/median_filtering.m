% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\board.tif');
% f=imnoise(f,'salt & pepper',0.2);
% [m,n]=size(f);
% g=f;
% for i=2:m-1
%     for j=2:n-1
%         temp=f(i-1:i+1,j-1:j+1);%周围9个点
%         temp=reshape(temp,1,[]);%将temp排成一列
%         temp=sort(temp);%将temp从小到大排序
%         g(i,j)=temp(1,5);%取temp的中值
%     end
% end
% subplot(121);imshow(f);title('椒盐噪声图像');
% subplot(122);imshow(g);title('for循环中值去噪');

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\board.tif');
% fn=imnoise(f,'gaussian',0,0.02);
% gn1=medfilt2(fn,[5,5]);
% gn2=medfilt2(fn,[5,5],'symmetric');
% subplot(221);imshow(f);
% title('original image');
% subplot(222);imshow(fn);
% title('Gaussian noise image');
% subplot(223);imshow(gn1);
% title('The result of median filter with boundary expanded by 0');
% subplot(224);imshow(gn2);
% title('The result of median filter with boundary extended by domain');

f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\board.tif');
fn=imnoise(f,'salt & pepper',0.2);
gn1=medfilt2(fn,[5,5]);
gn2=medfilt2(fn,[5,5],'symmetric');
subplot(221);imshow(f);
title('original image');
subplot(222);imshow(fn);
title('Gaussian noise image');
subplot(223);imshow(gn1);
title('The result of median filter with boundary expanded by 0');
subplot(224);imshow(gn2);
title('The result of median filter with boundary extended by domain');

