clc, clear, clf, close all

%*******************************%
%           PUNTO 1             %
%*******************************%

%a) Plot the signal x(t) for 10 periods. Use a time intervar of 
%   (delta)t = 1 / (100 * f0)

f0 = 60;
T0 = 1 / f0;
dt = 1 / (100 * f0);
tf = 10 * T0;
t = 0:dt:tf;

plot(t, x(f0, t))

%b) Compute the DC level of the signal

dc = c0(x(f0, t), dt, T0) / 10;

fprintf('The dc signal is: %f\n', dc)

%c) Determine the value of the following Exponential Fourier Series (EFS) 
%   coefficients and fill the table:

k = 3;
c = ck(x(f0, t), t, dt, T0, k);

fprintf('\nCoeficientes para f0 = %d Hz\n', f0)
fprintf('\n%3c%9s\n', 'k', 'ck')

index = 1;
for i = -k:k
    fprintf('%3d%9.4f\n', i, c(index))
    index = index + 1;
end

%d) Repeat the previous exercise for f0 = 120 Hz. Compare your results
%   and conclude.

k = 3;
f0 = 120;
T0 = 1 / f0;
c = ck(x(f0, t), t, dt, T0, k);

fprintf('\nCoeficientes para f0 = %d Hz\n', f0)
fprintf('\n%3c%9s\n', 'k', 'ck')

index = 1;
for i = -k:k
    fprintf('%3d%9.4f\n', i, c(index))
    index = index + 1;
end


function [salida] = x(f0, t)
    salida = sin(2 * pi * f0 * t) .* (0 < t & t < (1 / f0) / 2);
end

function [salida] = c0(x, dt, T0)
    salida = dt * sum(x) / T0;
end

function [salida] = ck(x, t, dt, T0, n)
    salida = zeros(1, 2 * n + 1);
    i = 1;
    
    for k = -n:n
        salida(i) = dt * sum(x .* exp(-1j * k * 2 * pi * t /T0)) / T0;
        i = i + 1;
    end
end
