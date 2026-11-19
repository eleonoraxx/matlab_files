A =  diag(ones(18,1)*6, 0)+diag(ones(17,1)*3, 1)+diag(ones(17,1)*3, -1)
B = zeros(18,3)
for j = 1:3
    B(:,j) = linspace(0,j,18)
end

x1 = A\B(:,1)
x2 = A\B(:,2)
x3 = A\B(:,3)

norm(x1 + x2 + x3)

%%
A = hilb(4)
[L U P] = lu(A)


%%
A = diag(ones(100,1)*4, 0)+diag(ones(99,1)*-1, 1)+diag(ones(99,1)*-1, -1)+diag(ones(90,1)*-2, 10)+diag(ones(90,1)*-2, -10)
cond(A, "inf")

%%
A = [6*pi, 3, 7; 6 9 -1; -3 -2 7]
b = [log(2), 6,-2*pi]'

x = A\b

%%
A = [4, 6; 3/5, 1]
cond(A, 'inf')

%%
diagonalePrincipale = ones(18,1)*6;
codiagonali = ones(17,1)*3;
A = diag(diagonalePrincipale,0)+ diag(codiagonali, -1)+diag(codiagonali, 1)
b = linspace(5,8,18)'
d = eig(A)
R = chol(A)
% RtRx = b
% Rx = y
% R'y = b
y = R' \b
x = R\y
norm(x+y,1)

%%
A = [6*pi 3 2 1; 3 7*pi 1 0; 2 1 6 0; 1 0 0 4]
R = chol(A)
r = R(3,3)

%% 
I = eye(20)
M = magic(20)  %20x20
B = M + I
A = B(:,[1:10]) %20x10
x = ones(10,1)
b = A * x % 20x10 * 10x1 = 20x1
[Q R] = qr(A) % Q: 20x20  R:20x10
% Ax-b is minimum when Rtildax - c1 is minimum
% so i have to find x which minimises the latter
Rtilda = R([1:10], :)  % 10x10
c = Q' * b % 20x20 * 20x1 = 20x1
c1 = c([1:10]) % 10x1
% Rtilda y = c1
xQR = Rtilda\c1

eQR = norm(abs(xQR - x) / abs(x))

xBS = A\b
eBS = norm(abs(xBS - x) / abs(x))


%% 
clearvars, clc
M = magic(60);
I = eye(60);
C = M+I ; % 60x60

A = C(:,1:10); % 60x10
% Ax = b   
x = ones(10,1); %10x1
b = A*x; % 60x1

[Q R] = qr(A); % Q: 60x60  R:60x10
% Rtilda y = c1
Rtilda = R(1:10, :); % 10x10
c = Q'*b; % 60x1
c1 = c(1:10); % 10x1
xQR = Rtilda\c1;
xQRR = R\(Q'*b);

eQR = norm(xQR-x)/norm(x)
eQRR = norm(xQRR-x)/norm(x)


RR = chol(A'*A);
% Rc'Rcx=A'b  
y = RR'\(A'*b);
xEN = RR\y;

eEN = norm(xEN-x)/norm(x)


%%
clearvars
for i = 1:12
    for j = 1:12
        if i == j
            A(i,j) = 2*i;
        elseif i< j 
             A(i,j) = -2/j;
        elseif i > j 
            A(i,j) = 2/j;
        end
    end
end
ro = max(abs(eigs(A)))

%%
H = hilb(12);

for i = 1:8;
    [Q R] = qr(H);
    H = R*Q;
end
h = H(3,3)

%%
clearvars
H = hilb(10);
[P D] = eig(H);
cond(P) % this is bcs P is orthogonal so its norm 2 is sqrt(ro(P'P)) = sqrt(ro(eye)) = 1 and the same for inv(P) since inv(P) = P' SO norm(P)*norm(P-1) = 1*1=1

%%
clearvars
x = linspace(-1,1,10);
V = vander(x);
z = ones(10,1);
w = z/norm(z);

for i = 1:24;
    z = V*w;
    lambda = w'*z;
    w = z/norm(z);
end

w3 = w(3)

%%
A = pascal(8)
[U, S, V] = svd(A)
Ak = zeros(size(A))
for i = 1:5
    Ak = Ak + U(:,i)*S(i,i)*V(:,i)'
end
norm(A-Ak)

S(6,6) % oh yeah babyyyyy

%%
clearvars, clc
A = diag(ones(24,1)*9, 0)+diag(ones(23,1)*2, 1)+diag(ones(23,1)*-2, -1);
b = linspace(0,1,24)';
[U S V] = svd(A);
% USV'x = b  SV'x = U'b  
y = S\(U'*b);
x = V'\y;


norm(x,2) + norm(y,2)

%%
clearvars, clc
n = 6
A = hilb(n);
p = 0.2;
% (A-0.2*I)*x = Ax-0.2x = lambdax-0.2x = (lambda-0.2)x
% so, lambda-0.2 is an eigenvalue of A-0,2I
% consequently, 1/(lambda-0.2) is an eigenvalue of (A-0,2I)^-1, and we will
% call it mu. if lambda - 0.2 is minimised, then mu is the largest it can
% be: it will be the largest eigenvalue of (lambda-0.2I)^-1.
% to compute it, we need to multiply (lambda-0.2I)^-1 * w = z
% but we can also have (lambda-0.2I) * z = w
% PA = LU    A = P^-1 L U 
% LUx = Pb 


z = ones(n,1);
w = z/norm(z);
[L U P] = lu(A-p*eye(size(A)));

for i = 1:4
    y = L \(P*w);
    z = U\y;
    lambda = p + 1/(w'*z)
    w = z/norm(z);
end

esatto = eigs(A, 1,p )

err = abs(lambda-esatto)/abs(esatto)
% WOW LO HO FATTO TUTTO TUTTO GIUSTO

%%
clearvars,clc
n = 6;
A  = pascal(n);
p = 2;
[L U P] = lu (A-p*eye(size(A)));
z = ones(n,1);
w = z/norm(z);

for i = 1:4;
    y = L\(P*w);
    z = U\y;
    lambda = p + 1/(w'*z)
    w = z/norm(z);
end

esa = eigs(A, 1, p)
err = abs(esa-lambda)

%%
clearvars
x = linspace(0,1,10);
A = vander(x);
[U S V] = svd(A);
Ak = zeros(size(A));
for i = 1:7;
    Ak = Ak + U(:,i)*S(i,i)*V(:,i)';
end
norm(Ak, inf)

%%
n = 12
A = hilb(n)
z = ones(n,1)
w = z/norm(z)
for i = 1:7
    z = A*w
    lambda = w'*z
    w = z/norm(z)
end

lambdaEsa = max(abs(eig(A)))

errREL = abs(lambdaEsa-lambda)/abs(lambdaEsa)

%%
clearvars, clc
n  = 18;
A = hilb(n);
eigenvaluesExact = flip(eig(A))

for i = 1:6;
    [Q R] = qr(A);
    A = R*Q;
end
eigenvalues = diag(A)

for i =1:length(eigenvaluesExact);
    x(i) = abs((eigenvaluesExact(i))-eigenvalues(i));
end

max(x)

%%
n = 100
p = 100
for i = 1:n
    for j = 1:n
        A(i,j) = (1+i+j)/(1+abs(i-j));
    end
end
[L U P] = lu(A-p*eye(n))
z = ones(n)
w = z/norm(z)
for i = 1:p
    y = L\(P*w)
    z = U\y
    lambda = p + 1 / (w'*z)
    w = z/norm(z, 2)
end

norm(w, 1)







