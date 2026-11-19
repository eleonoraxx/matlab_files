clc, clearvars
MATLAB = 'Matrix Laboratory'

% Comments use the percent sign

x = 1:10  % this means 'from 1 to 10'
% x is a vector or an array: it is 1x10 in size. in this case it is an horizontal array, because it holds 10 values all in the same row. to switch it up, and have 10 rows all in the same column, we can ‘transpose’ it:
x'

whos
% now we can see that each row has width 1, in fact the 'size' has changed to 10x1
a = linspace(20,50) % will automatically generate 100 values between the number you wanna start with and the number you wanna end with. this are equally spaced values.
%you can add a number to 'linspace' which equals to the number of terms
%that you want. the default is 100, but i can ask for 101 or 20.
% 'linspace' will always include the starting and ending terms: it's like
% these 2 were fixed, and the increment was adjusted accordingly. the ':'
% operator, on the other hand, fixes the increment and the starting point,
% but won't necessarily include the ending point
b = linspace(20, 50, 101)
% cunztions take arguments seprataed by commas and parenthesis to enclose them

% there is a way to manually input an array. you can separate the elements
% with spaces or commas.
y = [12    50 -8 100]

% matrix: ';' IS NEEDED TO CREATE A NEW ROW
A = [1 3; 2 -10; 88 99]
A + 2, A*8
% 2 will be added to each component of the matrix, like in algebra.. and
% every component will be multiplied by 8
% A*A will give you an error because A is a 3x2 matrix and the algebra
% rules state that we cannot multiply a 3x2 by a 3x2.. we can multiply A by
% the transpose of A, so a 2x3 matrix

% we can also do element wise operations which, from what i've gathered, involve
% the elements INSIDE the matrix or array, not the matrix or array it self.
% to carry out this kind of operations, we use the dot . right before
% the operator
x = linspace(0, 100, 101)
x.^2
% a.*b % this will multiply each component with another

A = ones(3,1) % 3x1 matrix of 1's
B = zeros(1)
C = eye(3) % identity matrix which is just 1's on the diagonal
A + B % will give you an algebra error
x = 1:1:10 % 'from 1 to 10': start at one, add one value every time and reach 10
x = 1:2:10 % 'from 1 to 10': start at 1, add 2 at every iteration and reach 10


% using the index to grab an element
A = [5 3 4.2;  8 9 0]
A(2,2) % 2nd row, 2nd column: 9
A(2,3) % 2nd row, 3rd coumn: 0
A(2,2) + A(2,3)  % the values can be added after being accessed through their location

B =[5 3 4.2]
B(1) % = 5
B(2) % = 3
B(3) % = 4.2
% B(0) % does not exist

B(end) % will give me the last value out of B, which can be any kind of array
% you can also insert 'end - x', with x being any real number, to get a
% certain value from its index but counting to reach to that index from the right end of the array. 
A(1,1) = 100
A(2,1:3) % 2nd row, from the 1st value to the 3rd value. in our case, this give sout all the values in the row. thus, it can also be more generally rewritten as:
A(2,:)
A(2,1:2) % 2nd row, from the 1st value to the 2nd
length(B) % will display the length of the vector B
size(B) % will tdisplay the size of the vector B

a = rand(4,1) % 'a' is a vector of 4 rows, each of 1 column. the numbers inside it (its components) span more or less randomly in the open interval (0, 1)
b = rand(4,1)
norm(a) % magnitude of vector
a + b % algebraic vector sum
dot(a,b), a*b' % are the expressions for the dot product
c = [a b] % will concatenate two vectors
a(2:end) = b(2:end)
