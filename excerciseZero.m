clc, clearvars

% EX. 1
hold off

% a)
x =  -pi:0.1:pi
plot(x,sin(x), '-m')
% b)
y = -1:0.1:1
plot(y,exp(y), '-r')
% c)
plot(x,exp(-x.^2), '-b')  %If x is a matrix, you need to use the element-wise multiplication or exponentiation. Note the dot.
% d) 
a = 4*pi:-0.1:0.1
plot(a, sin(a)./a, '-g') % the operation has to be carried out component wise because: sin(a) returns an array which has as elements the sin of each element o fa. and now we want each element of sin(a) to be divided by the value of (a). and then plot, in doing the graf, associates to each point in a, the value of the corresponding value insise sin(a)./a. since the space in which this happens is R^2,and since we are trying to graph a continuous function, then each dot in the graph is joined by a line.
% the operations need to be carried out COMPONENTWISE because each
% operation returns an array of values and in the end i only want one array
% of values to contain the 'results' of the function.
% e)
e = 0.1:0.1:2*pi
plot(e, e.*sin(e.^-1))

% LEARNT:
% - open intervals are computed the same way as closed intervals, but
% the starting point, instad of being A, is A+step  x€(0,1), step 0,1 = x€(
% - the functions need operations to be carried componentwise upon the
% compnent of the inputted vector


% EX. 2
% s = 0.1:0.1:100
% plot(s,sqrt(((100*(1-0.01*s.^2)^2)+0.02*s.^2)/(((1-s.^2).^2)+0.1*s.^2)))

% EX.3
A = magic(3)
detA = det(A)
dot(A(1,:),A(3,:))
A(1,:)*A(3,:)'
cross(A(:,1),A(:,2))

% QUIZ:
% format(style) changes the output display format to the format specified by style. For example, format("shortG") displays numeric values in a compact form with 5 total digits. Numeric formats affect only how numbers appear in the display, not how MATLAB® computes or saves them.

