% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\board.tif');
% f=imnoise(f,'salt & pepper',0.2);
% [m,n]=size(f);
% g=f;
% for i=2:m-1
%     for j=2:n-1
%         temp=f(i-1:i+1,j-1:j+1);%��Χ9����
%         temp=reshape(temp,1,[]);%��temp�ų�һ��
%         temp=sort(temp);%��temp��С��������
%         g(i,j)=temp(1,5);%ȡtemp����ֵ
%     end
% end
% subplot(121);imshow(f);title('��������ͼ��');
% subplot(122);imshow(g);title('forѭ����ֵȥ��');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\board.tif');
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

f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\board.tif');
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

