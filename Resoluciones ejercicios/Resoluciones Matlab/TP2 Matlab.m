%% Ejercicio 6.a

A = [-2 0 0; -2 -3 -2;1 0 -1]
B = [1; 2; 1]
C = [1 0 1]
D = 0

inv(s*eye(3)-A)
syms 's';
Gs = C*inv(s*eye(3)-A)*B+D 

sys_ss = ss(A, B, C, D);
sys_tf = tf(sys_ss)

Co = ctrb(A, B);
rank(Co)
T = inv(Co);
A_bar = T * A * inv(T)
B_bar = T * B
C_bar = C * inv(T)




%% Ejercicio 6.b

A = [-14 -4; 4 -4]
B = [1; 1]
C = [1 2]
D = 0

inv(s*eye(2)-A)
syms 's';
Gs = C*inv(s*eye(2)-A)*B+D 

sys_ss = ss(A, B, C, D);
sys_tf = tf(sys_ss)

 
%% Ejercicio  7.a

A = [2 9; -1 -4]
B = [4; -3]
C = [2 -6]
D = 0

sys_ss = ss(A, B, C, D)
sys_tf = tf(sys_ss)

[T, AJ] = jordan(A);
AJ
BJ = inv(T)*B
CJ = C*T
DJ = D

%% Ejercicio  7.b


A = [-6 1 0; -9 0 1; 0 0 0]
B = [1; 2; -1]
C = [3 -2 1]
D = 0

eig(A)

sys_ss = ss(A, B, C, D)
sys_tf = tf(sys_ss)

[T, AJ] = jordan(A);
AJ
BJ = inv(T)*B
CJ = C*T
DJ = D