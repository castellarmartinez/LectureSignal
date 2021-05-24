clc, clear, clf
n = 0:20;

figure(1)
stem(n, x1(n))
hold on
stem(S1(n, x1(n)))

figure(2)
stem(n, x2(n))
hold on
stem(S2(n, x2(n)))




function [y] = x1(n)  %X1[n] = n*exp(-0.2*n)*(u[n]-u[n-20])
    y = n .* exp(-0.2 .* n) .*...
        (escalonUnitario(n) - escalonUnitario(n - 20));
end

function [y] = x2(n)
    y = cos(0.05 * pi .* n) .*...
        (escalonUnitario(n) - escalonUnitario(n - 20));
end

function [y] = S1(n, x) %S1 = cos[0.2*pi*n]*x[n]
    y = cos(0.2 * pi * n) .* x; 
end

function [y] = S2(n, x) %S2 = x[n] + 3x[n-1]
    
    xnm1 = 0;               % Valor de x[n-1]
    y = zeros(1, length(n));% Se crea arreglo para guardar 
                            % valores del sistema
                            
    for i = 1:length(n)     % Iteración para guardar los valores 
                            % actuales y anteriores de la señal
        y(i) = x(i) + 3 * xnm1; 
        xnm1 = x(i);
        
    end
end


%{
    David Castellar Martínez
    24 de mayo del 2021
%}