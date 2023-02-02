clear all; clc; close all;

m = 6;
n = 5;

% A (m, n) = A (6, 5)
% B (m, n) = B (6, 5)
% i=1:m;
% A = i-2*j

% A = i-2*j
% a11 =  1-2*1
% a21 =  2-2*1
% a31 = 3-2*1
% a22 =  2-2*2

for i = 1:m
    for j = 1:n
        A(i,j) = i-2*j;
        % A(1,1) = 1-2*1;
        % A(1,2) = 1-2*2;
        % A(1,3) = 1-2*3;
        % A(1,4) = 1-2*4;
        % A(1,5) = 1-2*5;
        B(i,j) = 7*j-5*i;
    end
end

% letra a)
    la = 2*A + 3*B;

% letra b)
    la = A' + B';
    
% letra c)

    lc = A.^2 - B;

% lc = A^2 - B;
% error: for x^y, only square matrix arguments are permitted and one argument must be scalar.  Use .^ for elementwise power.

% letra d)
    lda = A*B - B*A;
    
% ld = A*B - B*A;
% error: operator *: nonconformant arguments (op1 is 6x5, op2 is 6x5)