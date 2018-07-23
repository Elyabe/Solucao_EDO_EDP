% Universidade Federal do Espírito Santos - Ceunes
% Algoritmos Numéricos II - Resolução numérica de Equações Diferenciais
% Autor : Elyabe Alves
% Modele o problema e transfira as Equações em alpha, beta e lambda e vB
% alpha, beta e lambda : Equações resultantes da modelagem
% vB : Equação do vetor de termos independentes
% x0, y0 , xf, yf : Condiçoes de contorno
% h : passo 

clear
clc

%==============Questao 1
% alpha = '2-0.5*x*x*x';
% beta = '-4-2*0.25*cos(x)';
% lambda = '2+0.5*x*x*x';
% vB = '2*0.25*(x+2)';
% x0 = 0;
% y0 = 0;
% xf = 2;
% yf = 6;
% h = 0.5;

%============Questão 7
% alpha = '1-0.25';
% beta = '0.25^2-2';
% lambda = '1+0.25';
% vB = '(0.25^2)*x';
% x0 = 0;
% y0 = 0;
% xf = 1;
% yf = -1;
% h = 0.25;
% 
% [A,B] = gerarMatrizDiferencasFinitas( alpha,beta ,lambda ,vB,x0,xf, h, y0, yf);
% A
% B
% S = linsolve(A,B)

%===================Equacao do calor
h = input('h: ');
DeltaT = input('DeltaT: ');
t0 = input('t0: ');
t1 = input('t: ');
x0 = input('x0: ');
x1 = input('x: ');
funcao = input('Funçao u(x): ');

u_0t = input('u_0t: ');
u_1t = input('u_0t: ');

h 
DeltaT
t0
t1
x0
x1
funcao 

%linsolve
[A,u0,b] = criarMatriz( DeltaT, h, x0, x1, t0, t1, funcao, u_0t, u_1t );
A
u0
b

u0 = u0 + b;
u0

U = linsolve(A,u0);
U

%-------Método de Euler
% f_xy = 'x*x+y';
% x0 = 0;
% y0 = 1;
% xf = 0.75;
% iterMax = 3;
% % h = 0.2;
% 
% [X,Y] = metodo_Euler(x0, y0, xf, iterMax )





 




