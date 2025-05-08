clc
clear all
% 
% A = [0, 1, 0; 0, 0, 1; -6, -11, -6]
% B = [0; 0; 6]
% C = [1, 0, 0]
% 
% [H,I,J,~] = tf2ss([0 1 3],[1 3 2])
% autovector = eig(A); %Otengo los autovalores y los almaceno en un vector columna llamado autovector
% lambda1 = autovector(1,1) %Guardo cada autovalor por separado.
% lambda2 = autovector(2,1)
% lambda3 = autovector(3,1)
% 
% P = [1,1,1;lambda1,lambda2,lambda3;lambda1^2,lambda2^2,lambda3^2];
% Pinv = inv(P);
% diag = Pinv*A*(P);
% 
% P = [1,1,1;-1,-2,-3;1,4,9]
% [D,P] = eig(A);
% D
% autodiag = inv(D)*A*D
% s = tf('s');
% J = [0 3 1 ; 4 1 2 ; 0 6 0]
% K = [-1 3 1; 4 0 2; 0 6 -1]
% J*K
syms t
e = [exp(5.8263*t);exp(-3.7185*t);exp(-1.1078*t)];
B = [5.8263^2 5.8263 1;3.7185^2 -3.7185 1;1.1078^2 -1.1078 0];
y = inv(B)*e
