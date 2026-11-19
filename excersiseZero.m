clc
clearvars

% EXERCISE 1:

x = [1:-0.1:0] % a vector whose components go from 1 to 0 with an increment of -01. 0 might not be included
a = x([1 4 3]) % this  creates a vector. the componets of this vector are the componets of index 1, 4 and 3 in the x vector.

b = x([1:2:7 10]) % this takes the corresponding components of x and makes them into a vector
zeros(1,5)
c = x([1 2 5])
d = [0.5*ones(1,2) -0.3]
x([1 2 5]) = [0.5*ones(1,2) -0.3] % i think this returns a vecotr with all the components of the previous vecotr mixed up??


% EXERCISE 2:

A =  [1:4; 5:8; 9:12]
size(A)
A(1:2, 4) % this will return a matrix 2x1. it will select the number in the 4th columsn from the first 2 rows un the og matrix
A(:,3) % this will return all the rows, but each row only the component in the thrid column
A(:, [2 4]) % this will return all the rows, but only the columns in each row with index corresponding to the components of the vector
A([2 3 3], :) % this will return the 2nd row, the 3rd row and the 3rd row again, each row with all the columns

A(3,2) = A(1,1) % this will substitute the value in the third row, 2nd column of A with the value in the 1st row, 1st column of A. '1o' will be substituted by '1'
A(1:2, 4) = zeros(2,1) % the matrixes are equal in size (2x1). the numbers in the 4th columns of the first 2 rows will be substituted by.. zeros!
A(2,:) = A(2,:) - A(2,1)/A(1,1)*A(1,:)
% the whole 2nd row of A has to be substitued with the whole 2nd row of A
% minus the whole 1st row of A multiplied by the value in 2nd row, 1st columns
% divided by the value in 1st row, 1st column


% EXERCISE 3:

A = [1:6; 5:10; 9:14; 15:20]

% inverse
B = rand(size(A))
B(:,1) = A(:,end);
B(:,2) = A(:,end-1);
B(:,3) = A(:,end-2);
B(:,end-2) = A(:, 3);
B(:,end-1) = A(:,2);
B(:, end) = A(:,1)
% alternatively:
C(:, [1 2 3 4 5 6]) = A(:,[6, 5, 4, 3, 2, 1])

% even columns
E = A(:,[2 4 6])

% odd columns
O = A(:,[1 3 5])

% only certain rows and columns
S = A([1 4 3],[5 2]) % there is an iteration going on: for every row, matlab picks the selected column(s) and places them into the new matrix

% vector made by the diagonal elements of A
d = diag(A)


% EXERCISE 4:

n = 10 % this is the size of the matrix
main_diagonal = 5 * ones(n, 1) % this is a vector in which each component is 5. it only works with the 'ones' matrix because with the 'zeros' matrix you would mupliply 5 by 0 each time (same with th 'eye' matrix) and with the 'rand' matrix you wouldn't get 5 when multiplying
sub_diagonal = -1 * ones(n-1,1)
super_diagonal = 3 * ones(n-1, 1)
% the diag function takes 2 arguments in this case: the first one is a
% vector which containes thet components of the main diagonal of the matrix
% and the second one is a number which corresponds to the 'order' of the
% diagonal. '0' indicates the main diagonal, '-1' the sub one and '1' the
% super one.
D = diag(main_diagonal, 0) + diag(sub_diagonal, -1) + diag(super_diagonal, 1)
D([5 8],[6 9]) = 2

