% Universidade Federal do Espírito Santos - Ceunes
% Algoritmos Numéricos II 
% Resolução de EDOs
% Autor : Elyabe Alves
% x : x_0 - extremo do intervalo
% y : f(x_0) - imagem : condição inicial
% xf : x final - outro extremo do intervalo
% iterMax : Número de iterações máximo
% X : Vetor de abscissas
% Y : Vetor de ordenadas

function [X,Y] = metodo_Euler( x, y, xf, iterMax )
    X(1) = x;
    Y(1) = y;
    h = abs(xf-x)/iterMax;
    for i = 2:iterMax+1
        y = y + h*(x*x+2*y);
        x = x + h;
        X(i) = x;
        Y(i) = y;
    end
end