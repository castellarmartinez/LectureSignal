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


function [salida] = x(f0, t)
    salida = sin(2 * pi * f0 * t) .* (0 < t & t < (1 / f0) / 2);
end

function [salida] = c0(x, dt, T0)
    salida = dt * sum(x) / T0;
end
