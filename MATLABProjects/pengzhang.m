% A=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\text_gaps.tif');
% B=[0 1 0;1 1 1;0 1 0];
% A2=imdilate(A,B);%ִ����������
% subplot(121);imshow(A);title('ԭͼ��');
% subplot(122);imshow(A2);title('����������ͼ��');

% A=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\line.tif');
% se=strel('disk',10);
% A2=imerode(A,se);
% subplot(121);imshow(A);title('ԭͼ��');
% subplot(122);imshow(A2);title('ȥ��ϸ�ߺ��ͼ��');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\shapes.tif');
% se=strel('square',20);
% fo=imopen(f,se);
% fc=imclose(f,se);
% foc=imclose(fo,se);
% subplot(221);imshow(f);title('ԭͼ��');
% subplot(222);imshow(fo);title('���п�������ͼ��');
% subplot(223);imshow(fc);title('���б�������ͼ��');
% subplot(224);imshow(foc);title('�ȿ���պ��ͼ��');

% A=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\FigP0918(left).tif');
% B1=strel([0 0 0;0 1 1;0 1 0]);
% B2=strel([1 1 1;1 0 0;1 0 0]);
% G=bwhitmiss(A,B1,B2);
% subplot(121);imshow(A);title('ԭͼ��');
% subplot(122);imshow(G);title('���л�����к��ͼ��');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\gra.tif');
% [L,n]=bwlabel(f);%����8����ʱͼ���е��������ӷ���
% imshow(f);hold on;
% for k=1:n
%     [r,c]=find(L==k);
%     rbar=mean(r);
%     cbar=mean(c);
%     plot(cbar,rbar,'Marker','o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',10);
%     plot(cbar,rbar,'Marker','*','MarkerEdgeColor','w');
% end
% figure;imshow(f);

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\gra.tif');
% B=bwperim(f,8);
% subplot(121);imshow(f);title('ԭͼ��');
% subplot(122);imshow(B);title('�߽�ⶨ');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\gra.tif');
% se=strel('square',3);
% J=imdilate(f,se);
% K=imerode(f,se);
% B=J-K;
% imshow(B);
% figure;imshow(f);

f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\gra.tif');
se=ones(5);
G=imdilate(f,se);
disp('����ǰ�����Ϊ��');
disp(bwarea(f));
disp('����ǰ�����Ϊ��');
disp(bwarea(G));

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\dowels.tif');
% se=strel('disk',5);
% fo=imopen(f,se);
% subplot(221);imshow(f);title('ԭͼ��');
% subplot(222);imshow(fo);title('ֱ�ӿ�������');
% fc=imclose(f,se);
% subplot(223);imshow(fc);title('ֱ�ӱ�������');
% foc=imclose(fo,se);
% subplot(224);imshow(foc);title('�ȿ���ս��');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\dowels.tif');
% se=strel('disk',5);
% g1=imdilate(f,se)-imerode(f,se);
% g2=imdilate(f,se)-f;
% g3=f-imerode(f,se);
% subplot(221);imshow(f);title('ԭͼ��');
% subplot(222);imshow(g1);title('���ͼ���ʴͼ��');
% subplot(223);imshow(g2);title('���ͼ�ԭͼ');
% subplot(224);imshow(g1);title('ԭͼ����ʴͼ��');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\rice.tif');
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

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\dowels.tif');
% S=zeros(1,40);
% for k=0:39
%     se=strel('disk',k);
%     fo=imopen(f,se);
%     S(k+1)=sum(fo(:));
% end
% plot(0:39,S,'linewidth',2);
% figure;
% plot(diff(S),'linewidth',2);