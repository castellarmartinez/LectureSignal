clc, clear, clf, close all

%*******************************%
%           PUNTO 1             %
%*******************************%

%a)

f0 = 60;
T0 = 1 / f0;
dt = 1 / (100 * f0);
tf = 10 * T0;
t = 0:dt:T0;

plot(t, x(f0, t))


function [salida] = x(f0, t)
    salida = sin(2 * pi * f0 * t) .* (0 < t & t < (1 / f0) / 2);
end

function [salida] = c0(x, f0, t, dt)
    
    salida = f0 * 
end
