f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\lena.tif');
% subplot(121);title('ԭͼ��');imshow(f);
% subplot(122);title('�Ҷ�ֱ��ͼ');imhist(f);

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
title('ԭʼͼ��');
subplot(222);imshow(G);
title('ͼ����⻯');
subplot(223);imhist(f,256);
title('ԭͼ���ֱ��ͼ');
subplot(224);imhist(G,256);
title('ͼ����⻯��ֱ��ͼ');