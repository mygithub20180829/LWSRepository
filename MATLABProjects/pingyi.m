I=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\lena.jpg');
I=im2double(I);%������㾫��ʧ��
[M,N,G]=size(I);
J=ones(M,N,G);
a=20;
b=30;
for i=1:M
    for j=1:N
        if(((i+a)>=1)&&((i+a)<=M)&&(j+b)>=1)&&(j+b<=N)
            J(i+a,j+b,:)=I(j,j,:);
        end
    end
end