%% TP3 2025
%% Ejercicio 1

A = [0 1; -4 -4]
B = [1; 1]
C = [1 0]
D = 0

syms s
PHI_LP = inv(s*eye(2) - A)

syms t
Phi = expm(A * t) % Matriz de transición de estados

%% Ejercicio 2

syms t tau

% Definir matrices
A = [-1 0; 0 1];
B = [-0.5; 0.5];
x1 = [-0.5; 1.5]; % Condición inicial en t = 1
u = 1;

% Solución simbólica
Phi = expm(A*(t - 1)) % e^{A(t-1)}
integrando = expm(A*(t - tau)) * B * u
int_term = int(integrando, tau, 1, t) % Integral convolución

x_t = simplify(Phi * x1 + int_term)
y_t = simplify([1 1] * x_t)
dy_t = simplify(diff(y_t, t))

%% Ejercicio 3
%% Ejercicio 4.1
%% Ejercicio 4.2

syms t tau

A = [-1 0; 0 1];
Phi = expm(A*t)

%% Ejercicio 5

syms s t tau

A = [0 1; -2 -3];
B = [0; 1];
C = [1 0]; 
D = 0;

Philp = inv(s*eye(2)-A)
expm(A*t)

%% Ejercicio 6

syms t

A = [0 0; 0 0];
B = [2 0; 0 2];
C = [1 1]; 
D = 0;

xi = [2; 2]; 
sys6 = ss(A, B, C, D);

eig(A)
expm(A*t)

%% Ejercicio 7

phi = [0.904 0; 0.0868 0.818]
xi = [1; 1]

x_unopuntodos = (phi^12)*xi


