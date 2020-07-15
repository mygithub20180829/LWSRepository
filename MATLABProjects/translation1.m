function J=translation1(I,a,b)
[M,N,G]=size(I);
I=im2double(I);
J=ones(M+abs(a),N+abs(b),G);
for i=1:M
    for j=1:N
        if(a<0&&b<0)
            J(i,j,:)=I(i,j,:);
        else if(a>0&&b>0)
            J(i+a,j+b,:)=I(i,j,:);
        else if(a>0&&b<0)
            J(i+a,j,:)=I(i,j,:);
        else
                J(i,j+b,:)=I(i,j,:);
            end
            end
        end
    end
end