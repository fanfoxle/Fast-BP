function [ A ] = matrix_2( m,n,l )
% a m*n matrix with its very row has l 1.
% m blocks, n vms
tic
A = zeros(m,n);
%A=matrix_1(n,l);
for i = 1:m
    A(i,:)=matrix_1_1(n,l);
end
toc
end