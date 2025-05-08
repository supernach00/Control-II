clc
clear

A = [0 1 ; -4 -4]
[autovalores]=eig(A)
[matrizAutovector,diagonal]=eig(A)
B = [1 1 ;-2 -1]
invB = inv(B);
uwu = invB*A*B
% B = [1;2;1];
% V=[0;1;-1]
% normalized_V = V/norm(V)
% P=[0 1 0;1 0 1;-1 -1 0]
% B= [1;2;1]
% inv(P)*B