%main
[iteration,x,rms]=gaussjacobi(A,b);
plot(iteration,rms,'red');
ylabel('RMS');
xlabel('ITERATIONS')
hold on;
[iteration2,x2,rms2]=gaussseidel(A,b);
plot(iteration2,rms2,'black')
legend('Gauss-Jacobi','Gauss-Seidel');
disp('Gauss-Jacobi No. Of Iterations and ans');disp(length(iteration));
disp(x);
disp('Gauss-Seidel No. Of Iterations and ans');disp(length(iteration2));
disp(x2);
hold off;