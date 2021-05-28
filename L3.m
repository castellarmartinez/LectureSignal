clc, clear, clf
n = 0:20;


%**************System 1*************%
figure(1)
subplot(2, 2, 1)
stem(n, S1(n, x1(n)))
hold on
stem(n, x1(n))
axis([0, 20,-3, 2])
title('$Sys_{1}\{x_{1}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = \cos[0.2\pi n]x[n]$', 'Interpreter', 'latex')

subplot(2, 2, 2)
stem(n, S1(n, x2(n)))
axis([0, 20, -3, 2])
title('$Sys_{1}\{x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = \cos[0.2\pi n]x[n]$', 'Interpreter', 'latex')

subplot(2, 2, 3)
stem(n, S1(n, x1(n) + x2(n)))
axis([0, 20, -3, 2])
title('$Sys_{1}\{x_{1}[n] + x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = \cos[0.2\pi n]x[n]$', 'Interpreter', 'latex')

subplot(2, 2, 4)
stem(n, S1(n, x1(n)) + S1(n, x2(n)))
axis([0, 20, -3, 2])
title('$Sys_{1}\{x_{1}[n]\} + Sys\{x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = \cos[0.2\pi n]x[n]$', 'Interpreter', 'latex')

%**************System 2*************%

figure(2)
subplot(2, 2, 1)
stem(n, S2(n, x1(n)))
axis([0, 20,-5, 12])
title('$Sys_{2}\{x_{1}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]$', 'Interpreter', 'latex')

subplot(2, 2, 2)
stem(n, S2(n, x2(n)))
axis([0, 20, -5, 12])
title('$Sys_{2}\{x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]$', 'Interpreter', 'latex')

subplot(2, 2, 3)
stem(n, S2(n, x1(n) + x2(n)))
axis([0, 20, -5, 12])
title('$Sys_{2}\{x_{1}[n] + x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]$', 'Interpreter', 'latex')

subplot(2, 2, 4)
stem(n, S2(n, x1(n)) + S2(n, x2(n)))
axis([0, 20, -5, 12])
title('$Sys_{2}\{x_{1}[n]\} + Sys\{x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]$', 'Interpreter', 'latex')

%**************System 3*************%

figure(3)
subplot(2, 2, 1)
stem(n, S3(n, x1(n)))
axis([0, 20,-3, 2])
title('$Sys_{3}\{x_{1}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]x[n-2]$', 'Interpreter', 'latex')

subplot(2, 2, 2)
stem(n, S3(n, x2(n)))
axis([0, 20, -3, 2])
title('$Sys_{3}\{x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]x[n-2]$', 'Interpreter', 'latex')

subplot(2, 2, 3)
stem(n, S3(n, x1(n) + x2(n)))
axis([0, 20, -3, 2])
title('$Sys_{3}\{x_{1}[n] + x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]x[n-2]$', 'Interpreter', 'latex')

subplot(2, 2, 4)
stem(n, S3(n, x1(n)) + S3(n, x2(n)))
axis([0, 20, -3, 2])
title('$Sys_{3}\{x_{1}[n]\} + Sys\{x_{2}[n]\}$', 'Interpreter', 'latex')
legend('$y[n] = x[n] + 3x[n-1]x[n-2]$', 'Interpreter', 'latex')


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


function [y] = S3(n, x) %S3 = x[n] + 3x[n-1]x[n-2]
    
    xnm1 = 0;               % Valor de x[n-1]
    xnm2 = 0;               % Valor de x[n-1]
    y = zeros(1, length(n));% Se crea arreglo para guardar 
                            % valores del sistema
                            
    for i = 1:length(n)     % Iteración para guardar los valores 
                            % actuales y anteriores de la señal
        y(i) = x(i) + 3 * xnm1 * xnm2;
        xnm2 = xnm1;
        xnm1 = x(i);
        
    end
end

%{
    David Castellar Martínez
    28 de mayo del 2021
%}