% A=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\text_gaps.tif');
% B=[0 1 0;1 1 1;0 1 0];
% A2=imdilate(A,B);%执行膨胀运算
% subplot(121);imshow(A);title('原图像');
% subplot(122);imshow(A2);title('膨胀运算后的图像');

% A=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\line.tif');
% se=strel('disk',10);
% A2=imerode(A,se);
% subplot(121);imshow(A);title('原图像');
% subplot(122);imshow(A2);title('去除细线后的图像');

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\shapes.tif');
% se=strel('square',20);
% fo=imopen(f,se);
% fc=imclose(f,se);
% foc=imclose(fo,se);
% subplot(221);imshow(f);title('原图像');
% subplot(222);imshow(fo);title('进行开运算后的图像');
% subplot(223);imshow(fc);title('进行闭运算后的图像');
% subplot(224);imshow(foc);title('先开后闭后的图像');

% A=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\FigP0918(left).tif');
% B1=strel([0 0 0;0 1 1;0 1 0]);
% B2=strel([1 1 1;1 0 0;1 0 0]);
% G=bwhitmiss(A,B1,B2);
% subplot(121);imshow(A);title('原图像');
% subplot(122);imshow(G);title('击中或击不中后的图像');

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\gra.tif');
% [L,n]=bwlabel(f);%计算8连接时图像中的所有连接分量
% imshow(f);hold on;
% for k=1:n
%     [r,c]=find(L==k);
%     rbar=mean(r);
%     cbar=mean(c);
%     plot(cbar,rbar,'Marker','o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',10);
%     plot(cbar,rbar,'Marker','*','MarkerEdgeColor','w');
% end
% figure;imshow(f);

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\gra.tif');
% B=bwperim(f,8);
% subplot(121);imshow(f);title('原图像');
% subplot(122);imshow(B);title('边界测定');

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\gra.tif');
% se=strel('square',3);
% J=imdilate(f,se);
% K=imerode(f,se);
% B=J-K;
% imshow(B);
% figure;imshow(f);

f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\gra.tif');
se=ones(5);
G=imdilate(f,se);
disp('膨胀前的面积为：');
disp(bwarea(f));
disp('膨胀前的面积为：');
disp(bwarea(G));

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\dowels.tif');
% se=strel('disk',5);
% fo=imopen(f,se);
% subplot(221);imshow(f);title('原图像');
% subplot(222);imshow(fo);title('直接开运算结果');
% fc=imclose(f,se);
% subplot(223);imshow(fc);title('直接闭运算结果');
% foc=imclose(fo,se);
% subplot(224);imshow(foc);title('先开后闭结果');

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\dowels.tif');
% se=strel('disk',5);
% g1=imdilate(f,se)-imerode(f,se);
% g2=imdilate(f,se)-f;
% g3=f-imerode(f,se);
% subplot(221);imshow(f);title('原图像');
% subplot(222);imshow(g1);title('膨胀减腐蚀图像');
% subplot(223);imshow(g2);title('膨胀减原图');
% subplot(224);imshow(g1);title('原图减腐蚀图像');

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\rice.tif');
% T=graythresh(f);
% G1=im2bw(f,T);
% figure;imshow(G1);
% se=strel('disk',9);
% fo=imopen(f,se);
% figure;imshow(fo);
% f2=imsubtract(f,fo);
% T=graythresh(f2);
% G2=im2bw(f2,T);
% figure;imshow(G2);
% G3=imtophat(f,se);
% figure;imshow(G3);

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\dowels.tif');
% S=zeros(1,40);
% for k=0:39
%     se=strel('disk',k);
%     fo=imopen(f,se);
%     S(k+1)=sum(fo(:));
% end
% plot(0:39,S,'linewidth',2);
% figure;
% plot(diff(S),'linewidth',2);