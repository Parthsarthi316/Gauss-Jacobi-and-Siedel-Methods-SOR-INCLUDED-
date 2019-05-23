%main
iter=zeros(length(sor),1);
for i=1:length(sor)
    [iter(i),x,rms]=gausssiedelSOR(A,b,sor(i));
end
plot(sor,iter);
xlabel('Relaxation parameter');
ylabel('Iterations');
disp('Parameters:');disp(sor');disp('No. of Iterations respectively');
disp(iter);
disp('Ans:');disp(x);