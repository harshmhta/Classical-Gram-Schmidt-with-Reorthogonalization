clear
close all
clc
format shortE
%% Problem 1
%Läuchli Matrix
X=[ones(1,5);sqrt(eps)*eye(5)];
fprintf('Problem 1:\n')
[Q,R] = cgs2(X);
fprintf('Q: \n')
disp(Q)
fprintf('R: \n')
disp(R)
fprintf('||X-QR||_2: \n')
disp(norm(X-Q*R))
fprintf('||I_5-Q´*Q||_2: \n')
disp(norm(eye(5)-Q'*Q))
%% Problem 2
%Part 1
d=0.5*log(2);
h=d/10;
x=(0:h:d)';
b=exp(x);
V=vander(x);
X=V(:,6:11);
%Part 2
fprintf('Problem 2:\n')
[Q,R] = cgs2(X);
fprintf('Q: \n')
disp(Q)
fprintf('R: \n')
disp(R)
a=inv(R)*Q'*b;
fprintf('Least square coefficients: \n')
disp(a)
% Part 3
xx=(0:d/100:d)';
yy=polyval(a,xx);
yexact=exp(xx);
err=yexact-yy;
err_norm=norm(err,inf);
fprintf('err_norm: \n')
disp(err_norm)
%Plot
figure
plot(xx,err)
xlabel('X value')
ylabel('Error value: (y_{Exact}-y_{LeastSquare})')
title('Error as a function of x')