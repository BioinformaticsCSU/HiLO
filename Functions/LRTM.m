function [Matrix_, W1, W2] = LRTM(R_Omega, alpha, beta ,Sr,Sd)

maxiter=30;

[M, N] = size(R_Omega);
A=[Sr,R_Omega;R_Omega',Sd];
[m,n]=size(A);
rng('default');
W1 = rand (m,n);
W2 = rand (m,n);

k=1;
while k<maxiter


    W1=W1.*(A*A')./((W1*A+A*W2)*A'+alpha*W1);
    W2=W2.*(A'*A)./(A'*(W1*A+A*W2)+beta*W2);

  
    k=k+1;
end
Matrix=W1*A+A*W2;
Matrix_ = Matrix(1:M,M+1:end);
end
