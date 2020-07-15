f=imread('D:\Delphi\Roberts.tif');
% H1=[-1 0 1;-2 0 2;-1 0 1];
% H2=[-1 -2 -1;0 0 0;1 2 1];
% f1=im2double(f);
% G1=imfilter(f1,H1,'replicate');
% G2=imfilter(f1,H2,'replicate');
% G=sqrt(G1.*G1+G2.*G2);
% subplot(121);imshow(G,[]);
% f2=f+uint8(G);
% subplot(122);imshow(f2,[]);

%Roberts
% H1=[-1 0; 0 1];
% H2=[0 -1;1 0];

%Prewiit
H1=[-1 0 1;-1 0 1;-1 0 1];
H2=[-1 -1 -1;0 0 0;1 1 1];
 f1=im2double(f);
 G1=imfilter(f1,H1,'replicate');
 G2=imfilter(f1,H2,'replicate');
 G=sqrt(G1.*G1+G2.*G2);
 subplot(121);imshow(G,[]);
 f2=f+uint8(G);
 subplot(122);imshow(f2,[]);
 
 