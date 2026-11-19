clearvars
myDotProduct = 0
for k = 1:100
    x(k) = log(k) + sqrt(k)
    y(k) = k/(6*pi)
    myDotProduct = myDotProduct + x(k)*y(k)
end
actualDotProduct = dot(x,y)

% extracts numbers geater than 8 in the vector!!
x = [9, 8, 3, 5, 9, 7, 7, 2]
x(x > 8)

x = 0.01:0.01:1
y = sin(1./x)
semilogx(x,y)

clearvars
n = 7
for i = 1:n
    for j = 1:n
        A(i,j) = cos(2*pi/max(i,j))
    end
end
rankA = rank(A)
B = A^3
rankA3 = rank(B)
det(B)

v1 = [4, 10/7, -2/5]
v2 = [3/2, 3, -1/6]
v3 = [2. 7/6, 3/7]
dot(cross(v1,v3), v2)



clc


f1=inline('x.^2'); f2=inline('(x-1).^2'); x=linspace(0,2); y1=f1(x); y2=f2(x); plot(x,y1,x,y2);

clearvars
clc
x = linspace(28,52,1000)
for i = 2:2:1000
    x(i) = 2*x(i)
end
x(456)

x = linspace(0,4)
f = inline('exp(x.^2)')
semilogx(x,f(x))

f3 = inline('x.^2')
f4 = inline('(x-1).^2')
x = linspace(0,4)
plot(x,f3(x),x,f4(x))

clearvars, clc
v1 = [3,3,-5/4]
v2 = [5/3,-2/3,3/10]
v3 = [1/6, 1, 5/7]
1/6*(dot(cross(v3,v2),v1))

clearvars, clc
-2*eye(5) + diag(ones(1,4),1)+diag(ones(1,4),-1)

clearvars
x = [1, log(2), sqrt(7)]'
y = [pi, log(3), sqrt(8)]'
dot(x,y)

y=[2, 4, 6, 4, 8, 6, 8]
x=[3, 0, 5, 4, 5, 5, 8] 
y==x

A = rand(1,3)
B = rand(1,3)
A.^B

plot(x,y,'r-')