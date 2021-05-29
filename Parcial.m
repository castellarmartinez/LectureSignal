clc, clear, close all

Fs = 44100;
t = 0:1/Fs:5;
xr = (0.5 + 0.2 * rand(1, 10)) * sin(2 * pi * (5000 + 1000 * rand(10, 1)) * t) +...
     (2 + 0.2 * rand(1, 100)) * sin(2 * pi * (500 * rand(100, 1)) * t);

sound(xr, Fs)
pause(5+1)
%a) Graficar la magnitud y fase del espectro de la señal de audio provista(xr)

XR = fft(xr);
XR = fftshift(XR);

magnitudR = abs(XR);
phaseR = angle(XR);

f = linspace(-Fs/2, Fs/2, length(XR));

figure()
plot(t, xr);
xlabel("Tiempo [s]")
ylabel("Amplitud")
title("Gráfica en dominio del tiempo")

figure()
plot(f, magnitudR)
xlabel("Frecuencia [\omega]")
ylabel("Magnitud")
title("Magnitud del espectro (XR)")

figure()
plot(f, phaseR)
xlabel("Frecuencia [\omega]")
ylabel("Fase")
title("Fase del espectro (XR)")

%b) Determinar los rangos de frecuencia con mayor energía en la señal (xr)

% Respuesta: es el rango donde el valor de la magnitud es mayor

%c) Diseñar un filtro ideal (F1) que permita eliminar el ruido del audio.

% Respuesta: se hace un filtro pasa bajos, para las frecuencias
% comprendidas entre 3 a 7 kHz (dadas en el enunciado del problema)

fPasaBajos = abs(f) <= 7000 & abs(f) >= 3000;

%d) Confirme la efectividad del filtro propuesto obteniendo la señal (xf) y
% graficando la magnitud de su espectro.

XF = fPasaBajos .* XR;

magnitudF = abs(XF);
phaseF = angle(XF);

figure()
plot(f, magnitudF)
xlabel("Frecuencia [\omega]")
ylabel("Magnitud")
title("Magnitud del espectro (XF)")

XF = ifftshift(XF);  %Conversión al dominio del tiempo
xf = ifft(XF);
xf = real(xf);        %Descarte de la parte imaginaria

sound(xf, Fs)
pause(5+1)

%e) Simular el sistema mostrado en la Figura 1, utilizando una fc = 10 kHz.

fc = 10000; %Suministrado en el enunciado
wc = 2 * pi * fc;
y = xf .* cos(wc * t);

sound(y, Fs)
pause(5+1)
%f) Graficar la magnitud del espectro de (y) y describir el efecto del sistema al
%comparar los cambios en la distribución de energía en el dominio de la
%frecuencia entre (xf) y (y).

Y = fft(y);
Y = fftshift(Y);
magnitudY = abs(Y);

figure()
subplot(2, 1, 1)
plot(f, magnitudF)
xlabel("Frecuencia [\omega]")
ylabel("Magnitud")
title("Magnitud del espectro (XF)")

subplot(2, 1, 2)
plot(f, magnitudY)
xlabel("Frecuencia [\omega]")
ylabel("Magnitud")
title("Magnitud del espectro (Y)")

%g) Implementar parcialmente el sistema de la Figura 2 para obtener (xi) y
%graficar la magnitud y fase de su representación en frecuencia.

xi = y .* cos(wc * t);
sound(xi, Fs)
pause(5+1)

XI = fft(xi);
XI = fftshift(XI);
magnitudI = abs(XI);

figure()
plot(f, magnitudI)
xlabel("Frecuencia [\omega]")
ylabel("Magnitud")
title("Magnitud del espectro (XI)")

%h) Teniendo en cuenta el resultado anterior, diseñe un filtro ideal (F2) con
%una frecuencia de corte que permita recuperar el audio original sin ruido
%(xf).
