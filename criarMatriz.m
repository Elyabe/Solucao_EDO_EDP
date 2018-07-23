% Universidade Federal do Espírito Santos - Ceunes
% Algoritmos Numéricos II 
% Cria a matriz do sistema A u = b
% Autor : Elyabe Alves
% DeltaT, h : Passo
% x0, x, t0, t, u_0t, u_1t : Condições de contorno 
% funcao : função u( x, t )
% A : Matriz numérica montada
% u0 : Resultado da condicao inicial
% b : Vetor de termos independentes

function [A,u0,b] = criarMatriz( DeltaT, h, x0, x, t0, t, funcao, u_0t, u_1t )
    alpha = DeltaT/(h*h);
    ordem = (t - t0)/DeltaT -1;
    for i = 1:ordem
            A(i,i) = 1+2*alpha;
            if i + 1 <= ordem 
                A(i,i+1) = -alpha;
            end
            if i - 1 > 0
                A(i,i-1) = -alpha;
            end
    end

    x = x0 + h;
    for i = 1:ordem
        u0(i,1) = eval(funcao,x);
        x = x + h;
    end;
    
    b(1,1) = -u_0t;
    b(ordem,1) = -u_1t;
end
   
