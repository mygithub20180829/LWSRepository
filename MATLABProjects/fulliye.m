% Fs=1000;
% T=1./Fs;
% L=1000;
% t=(0:L-1)*T;
% y1=2*cos(2*pi*20*t);
% figure,plot(t,y1,'b','LineWidth',2);
% y2=3*cos(2*pi*100*t);
% figure,plot(t,y2,'g','LineWidth',2);
% y=y1+y2;
% figure;plot(t,y,'r','LineWidth',2);
% yfft=fft(y);
% n=0:(L-1);
% f=n*Fs/L;
% figure;plot(f(1:L/2),abs(yfft(1:L/2)),'r');

% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\building.tif');
%  F=fft2(f);
% imshow(log(1+abs(F)),[]);

%  f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\building.tif');
%   F=fft2(f);
%   S=fftshift(log(1+abs(F)));
%   imshow(S,[]);

%  f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\building.tif');
%  imshow(f);
%  F=fft2(f);
%  S=fftshift(log(1+abs(F)));
%  figure;imshow(S,[]);
 
 f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\building.tif');
 %�����˲���
 h=fspecial('sobel');%prewitt
 %Ƶ���˲���
 H=freqz2(h,size(f,1),size(f,2));
 freqz2(h) ;
 colormap(gray);
 %�ռ����˲�
 Gs=imfilter(double(f),h);
 subplot(221);imshow(Gs,[]);
 %Ƶ���˲�
 Gf=dftfilt(f,H);
 subplot(222);imshow(Gf,[]);
 subplot(223);imshow(abs(Gs)>0.2*abs(max(Gs(:))));
 subplot(224);imshow(abs(Gf)>0.2*abs(max(Gf(:))));
 
% %�����ͨ�˲���(ILPF)
%  D0=0.05*M;
% [U,V]=dftuv(M,N);
% D=sqrt(U.^2+V.^2);
% H=double(D<=D0);
% 
% %������˹��ͨ�˲���(BLPF)
%  D0=0.05*M;
% [U,V]=dftuv(M,N);
% D=sqrt(U.^2+V.^2);
% H=1./(1+(D./D0).^(2*n));
% 
% %��˹��ͨ�˲���
% D0=0.05*M;
% [U,V]=dftuv(M,N);
% D=sqrt(U.^2+V.^2);
% H=exp(-(D.^2)./(2*(D0^2)));

%��ͨ�˲�ͼ����ǿ��matlabʵ��
% f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\line.tif');
% subplot(121);imshow(f);
% D0=0.05*size(f,1);
% H=hpfilter('gaussian',size(f,1),size(f,2),D0);
% g=dftfilt(f,H);
% subplot(122);imshow(g,[]);
% 
% F=fft2(f,size(f,1),size(f,2));
% S=H.*F;
% S1=ifft2(S);
% %g=real(ifft2(H.*F));
% g=real(S1);

%  f=imread('E:\΢���ļ�\Desktop\��С������ͼ����\images\line.tif');
%  D0=0.05*size(f,1);
% H=hpfilter('gaussian',size(f,1),size(f,2),D0);
% H=0.4+2*H;
% g=dftfilt(f,H);
% g=histeq(g);
% figure;imshow(g,[]);