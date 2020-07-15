% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\line.tif');
% w=[-1 -1 -1;2 2 2;-1 -1 -1];
% g=imfilter(double(f),w);
% subplot(121);imshow(f);
% subplot(122);imshow(g,[]);

f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\building.tif');
f=im2double(f);
f=edge(f,'prewitt');
[H,theta,rho]=hough(f,'ThetaResolution',0.5);
imshow(H,[],'XData',theta,'YData',rho,'InitialMagnification','fit');
xlabel('\theta'),ylabel('\rho');
axis on,axis normal,hold on;
P=houghpeaks(H,5);
plot(theta(P(:,2)),rho(P(:,1)),'s','color','white');
lines=houghlines(f,theta,rho,P);
figure,imshow(f),hold on;
for k=1:length(lines)
    xy=[lines(k).point1;lines(k).point2];
    plot(xy(:,1),xy(:,2),'LineWidth',4,'Color','r');
end

% f=imread('E:\微信文件\Desktop\黎小琴数字图像处理\images\building.png');
% S=qtdecomp(f,.27);
% blocks=repmat(uint8(0),size(S));
% for dim=[512 256 128 64 32 16 8 4 2 1]
%     numblocks=length(find(S==dim));
%     if(numblocks>0)
%         values=repmat(uint8(1),[dim dim numblocks]);
%         values(2:dim,2:dim,:)=0;
%         blocks=qtsetblk(blocks,S,dim,values);
%     end
% end
% blocks(end,1:end)=1;
% blocks(1:end,end)=1;
% imshow(f);title('原始图像');
% figure;imshow(blocks,[]);title('四叉树分割图像');