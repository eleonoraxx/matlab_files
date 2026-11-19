x = linspace(1,2,6)
A = vander(x)
size(A)
[U, S, V] = svd(A)

A4 = zeros(size(A))
k = 4
for i = 1:k
    Ak = S(i,i) * U(:,i) * V(:,i)'
    A4 = A4 + Ak
end

norm(A4, "inf")


%% 
clc, clearvars
H = hilb(14);

z = ones(14, 1);
w = z / norm(z);

% Increase the number of power iterations for better accuracy
% You can adjust this number as needed

for i = 1:7
    z = H * w;
    lambda = w' *z
    w = z / norm(z);
end

; % Corrected calculation of lambda

% Calculate all eigenvalues and find the largest one;
lambdaAcc = max(abs(eig(H)));

% Calculate the error
err = abs(lambdaAcc - lambda) / lambdaAcc



%%
clearvars, clc
A = magic(3)
[Q, R] = qr(A)
b = [1,2,3]'
x = Q\b


%%
clc, clearvars
x = linspace(1,2,6)
A = vander(x)
[U S V] = svd(A)

AK = zeros(size(A))
for i = 1:4
    AK = AK + U(:,i)*S(i,i)*V(:,1)'
end 

norm2 = norm(AK,2)


%%
clearvars, clc

A = zeros(100)
for i = 1:100
    for j = 1:100
        A(i,j) = max(cos(i), sin(j));
    end 
end 

B = A'*A;
R = chol(B);
r = R(52,64)

%%
A = hilb(14)
z = ones(14,1)
w = z/norm(z)
lambda = w'*A*w

for i = 1:4
      z = A*w
      w = z/norm(z)
      lambda = w'*A*w
      
end

lmax = max(eig(A))

err = abs(lmax - lambda) / lmax

%%
x = 1e-6;
y_computed = 1 - sqrt(1 + x^2);

% True value using Taylor series approximation
y_true = -x^2 / 2;

% Relative error
err = abs((y_true - y_computed) / y_true);

% Display the results
disp(['Computed y: ', num2str(y_computed)]);
disp(['True y (approx): ', num2str(y_true)]);
disp(['Relative error: ', num2str(err)]);



%%
clearvars, clc
A = diag(ones(100,1)*6, 0) + diag(ones(99,1)*3, 1) + diag(ones(99,1)*(-3), -1)

nIterations = 10
z = ones(100,1)
w = z/norm(z)


for i = 1:nIterations
    z = A*w;
    w = z/norm(z);
end
lambdaMax = w'*A*w

[L, U, P] = lu(A);
z = ones(100,1);
w = z/norm(z);
for i = 1:nIterations
    % z = w(inv(A))  
    % Az = w
    % Ly = Pw
    % Uz = y

    y = L\(P*w);
    z = U\y;
    w = z/norm(z);
    mu = w'*A*w;
    
end 

lambdaMin = 1 / mu



max = max(abs(eigs(A)))
min = min(abs(eigs(A)))


%%
A = magic(3)
[Q, R] = qr(A)
b = [1 2 3 ]'
x = R\b

%%
clearvars, clc
x = linspace(1,2,6)
A = vander(x)
[U, S, V] = svd(A)

Ak = zeros(6)
for i = 1:4
    Ak = Ak + U(:,i)*S(i,i)*V(:,i)'
end

norm(Ak, inf)


%%
A = zeros(100)
for i = 1:100
    for j = 1:100
        A(i,j) = max(cos(i), sin(j));
    end
end

B = A'*A;
R = chol(B);
r = R(52,64)


    