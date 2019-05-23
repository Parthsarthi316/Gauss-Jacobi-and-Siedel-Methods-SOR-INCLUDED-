%GAUSS-JACOBI
function [iteration,x,rms]=gaussjacobi(A,b)
x=zeros(length(b),1);
temp=zeros(length(b),1);
s=zeros(length(b),1);
rms=0;iter=1;w=2;
while (iter==1 || 10^-4-rms(w-1)<=0)
    for i=1:length(x)
        for j=1:length(x)
            if(i~=j)
                s(i)=s(i)+A(i,j)*temp(j);
            end
        end
        x(i)=(b(i)-s(i))/A(i,i);
        s=zeros(length(b),1);
    end
    rms(iter)=sqrt(sum((A*x-b').^2)/3);
    iter=iter+1;
    w=iter;
    temp=x;
end
iteration=1:iter-1;
end