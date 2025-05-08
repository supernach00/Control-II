close all
clear all
clc

R1 = 47000 % Valor de R1
R2 = 10000% Valor de R2
C1 = 1E-6% Valor de C1
C2 = 1E-6% Valor de C2

A = [0, 1/(R2*C2); 0, 0]
B = [0, 1/(R2*C1); 0, 0]
C = [1, 0]
D = 0;

% Definir el vector de ganancias
K = [-10e3 ,-200];

% Realimentación del sistema
sys = ss(A, B, C, D);
sys_cl = feedback(sys, K);

% Respuesta al escalón unitario
%step(sys_cl);
figure
title("LA");
bode(sys);
figure
title("LC");
bode(sys_cl);