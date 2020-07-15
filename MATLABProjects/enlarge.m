%将图像I不按比例缩小，原图为m*n，缩小为k1*m,k2*n
I=[1 2 3 4 5 6;7 8 9 10 11 12;...
   13 14 15 16 17 18;19 20 21 22 23 24;...
   25 26 27 28 29 30;31 32 33 34 35 36];
k1=0.6;k2=0.75;
[m,n]=size(I);
M=round(m*k1);
N=round(n*k2);
for i=1:M
    for j=1:N
        x=round(i/k1);
        if x>m x=m;end
        y=round(j/k2);
        if y>n y=n;end
        G(i,j)=I(x,y);
    end
end
G