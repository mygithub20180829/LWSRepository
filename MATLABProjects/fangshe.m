% I=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\lena.jpg');
% subplot(121);imshow(I);title('ԭͼ��');
% H=size(I);
% m=30;n=80;
% tform=maketform('affine',[1 0 0;0 1 0;m n 1]);
% B=imtransform(I,tform,'XData',[1 H(2)+abs(m)],'YData',[1 H(1)+abs(n)]);
% subplot(122);imshow(B);title('ƽ�ƺ��ͼ��');

I=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\lena.jpg');
[fheight,fwidth]=size(I);
tform1=maketform('affine',[-1 0 0;0 1 0;fwidth 0 1]);
J1=imtransform(I,tform1);
subplot(121);imshow(I);title('ԭͼ��');
subplot(122);imshow(J1);title('ˮƽ������ͼ��');