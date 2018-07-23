% Universidade Federal do Espírito Santos - Ceunes
% Algoritmos Numéricos II 
% Resolução de EDs : Problema da barra 
% Autor : Elyabe Alves
% A : Matriz gerada
% B : Vetor de termos independentes
% S: Matriz de todos as probabilidades iguais

function [A,B] = gerarMatrizDiferencasFinitas( alpha, beta, lambda, fB, x0, xL, h, y0, yf )
 ordem = (xL - x0)/h - 1;
 x =  x0 + h
  for i = 1:ordem
            A(i,i) = eval(beta,x);
            if i + 1 <= ordem 
                A(i,i+1) = eval(lambda,x);
            end
            if i - 1 > 0
                A(i,i-1) = eval(alpha, x);
            end
            B(i,1) = eval(fB,x);
            x = x + h;
    end
 x = x0 + h;   
 B(1,1) = B(1,1) - y0*eval(alpha,x);
 x = xL - h;
 B(ordem,1) = B(ordem,1) - yf*eval(lambda,x);
 end 