%GAUSS-SEIDEL 
function [iteration2,x2,rms2]=gaussseidel(A,b)
x2=zeros(length(b),1);
s2=zeros(length(b),1);
rms2=0;iter2=1;w2=2;
while(iter2==1 || 10^-4-rms2(w2-1)<=0)
    for i=1:length(x2)
        for j=1:length(x2)
            if(i~=j)
                s2(i)=s2(i)+A(i,j)*x2(j);
            end
        end
        x2(i)=(b(i)-s2(i))/A(i,i);
        s2=zeros(length(b),1);
    end
    rms2(iter2)=sqrt(sum((A*x2-b').^2)/3);
    iter2=iter2+1;
    w2=iter2;
end
iteration2=1:iter2-1;
end