I=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\moon.tif');
H1=[-1 0; 0 1];
H2=[0 -1; 1 0];
G1=imfilter(I,H1,'replicate');
G2=imfilter(I,H2,'replicate');

subplot(121);imshow(G1,[]);
subplot(122);imshow(G2,[]);

% figure;subplot(121);imshow(uint8(G1),[]);
% subplot(122);imshow(uint8(G2),[]);

G=sqrt(G1.*G1+G2.*G2);
subplot(223);imshow(G,[]);

F=I1+uint8(G);
subplot(224);imshow(F,[]);