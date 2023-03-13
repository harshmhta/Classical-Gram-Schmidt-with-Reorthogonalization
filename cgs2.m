function [Q,R] = cgs2(X)
%Classical Gram–Schmidt Orthogonalization (CGS-2)
[m,n]=size(X);
Q=zeros(m,n); %Prealocate Q1
R=zeros(n,n); %Prealocate R
R(1,1)=norm(X(:,1));
Q(:,1)=X(:,1)/R(1,1);
for k=2:n
    v=Q(:,1:k-1)'*X(:,k);
    y=X(:,k)-Q(:,1:k-1)*v;
    dv=Q(:,1:k-1)'*y;
    y=y-Q(:,1:k-1)*dv;
    R(1:k-1,k)=v+dv;
    R(k,k)=norm(y);
    Q(:,k)=y/R(k,k);
end
end