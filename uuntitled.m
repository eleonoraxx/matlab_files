x = [2 1 -1]
y = [3 2 1]
r = cross(x,y)

n = [3 -5 -1]

dot(r,n)
r./n

A = [x; y; n]
b = [1 1 0]'
x = A\b

A = rand(3,2)
B = rand(3,2)

clc
clearvars
A = [1 0 0 0; 0 0 1 0]
B = [1 0; 0 0; 0 5; 0 0]
C = A*B
det(C)

clearvars
A = [1 1 1; 0 1 1; 0 0 1]
inv(A)