I=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\lena.jpg');
I=im2double(I);%避免计算精度失真
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