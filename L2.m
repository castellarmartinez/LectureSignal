%{
Fecha: 20/05/2021
%}

clc, clear, clf

%*********** 1. a ***********%
t1 = -2:.001:2;

figure(1)
plot(t1, x1(t1));
axis([-2, 2, -0.1, 1.5])
xlabel("t")
ylabel("x_{1}")
title('$x_{1} = u(t+\frac{1}{2}) - u(t-\frac{1}{2})$','Interpreter','latex')

%*********** 1. b ***********%
t2 = -2:.001:2;

figure(2)
plot(t2, x2(t2));
axis([-2, 2, -0.1, 1.5])
xlabel("t")
ylabel("x_{2}")
title('$x_{2} = r(t + 1) - 2r(t) + r(t - 1)$','Interpreter','latex')

%*********** 1. c ***********%
t3 = -7:0.001:7;

figure(3)
subplot(2, 2, 1)
plot(t3, x3(t3), t3, x3(0.5 * t3))
axis([-7, 7, -0.1, 1.5])
xlabel("t")
ylabel("x_{3}")
title('$x_{3} = e^{-t}\cos(10t)[u(t)-u(t-3)]$', 'Interpreter', 'latex')
legend('x_{3}(t)', 'x_{3}(0.5t)')

subplot(2, 2, 2)
plot(t3, x3(t3), t3, x3(t3 + 2))
axis([-7, 7, -0.1, 1.5])
xlabel("t")
ylabel("x_{3}")
title('$x_{3} = e^{-t}\cos(10t)[u(t)-u(t-3)]$', 'Interpreter', 'latex')
legend('x_{3}(t)', 'x_{3}(t+2)')

subplot(2, 2, 3)
plot(t3, x3(t3), t3, x3(-t3))
axis([-7, 7, -0.1, 1.5])
xlabel("t")
ylabel("x_{3}")
title('$x_{3} = e^{-t}\cos(10t)[u(t)-u(t-3)]$', 'Interpreter', 'latex')
legend('x_{3}(t)', 'x_{3}(-t)')

subplot(2, 2, 4)
plot(t3, x3(t3), t3, x3(2 * t3 - 1))
axis([-7, 7, -0.1, 1.5])
xlabel("t")
ylabel("x_{3}")
title('$x_{3} = e^{-t}\cos(10t)[u(t)-u(t-3)]$', 'Interpreter', 'latex')
legend('x_{3}(t)', 'x_{3}(2t - 1)')

%*********** 2. a ***********%
n1 = -3:6;

figure(4)
grid minor
stem(n1, X1(n1))
axis([-3, 6, -1, 3])
xlabel("n")
ylabel("x_{1}")
title('$x_{1} = \delta[n + 2] + u[n] + r[n - 1]- 2r[n - 2] + r[n - 4]$', 'Interpreter', 'latex')

%*********** 2. b ***********%
n2 = -13:13;

figure(5)
subplot(1, 3, 1)
stem(n2, X2(n2))
hold on
stem(n2, X2(-(n2 + 1)))
axis([-13, 13, -1, 5])
xlabel("n")
ylabel("x_{2}")
title('$x_{2} = (1.2) ^ n (u[n + 3] - u[n - 7])$', 'Interpreter', 'latex')
legend("X_{2}[n]", "X_{2}[-(n + 1)]")

subplot(1, 3, 2)
stem(n2, X2(n2))
hold on
stem(n2, X2(3 * n2))
axis([-13, 13, -1, 5])
xlabel("n")
ylabel("x_{2}")
title('$x_{2} = (1.2) ^ n (u[n + 3] - u[n - 7])$', 'Interpreter', 'latex')
legend("X_{2}[n]", "X_{2}[3n]")

subplot(1, 3, 3)
stem(n2, X2(n2))
hold on
stem(n2, X2(n2 / 2))
axis([-13, 13, -1, 5])
xlabel("n")
ylabel("x_{2}")
title('$x_{2} = (1.2) ^ n (u[n + 3] - u[n - 7])$', 'Interpreter', 'latex')
legend("X_{2}[n]", "X_{2}[n/2]")


function [salida] = x1(t)
    salida = escalonUnitario(t + 1/2) - escalonUnitario(t - 1/2);
end

function [salida] = x2(t)
    salida = rampaUnitaria(t + 1) - 2 * rampaUnitaria(t)...
        + rampaUnitaria(t - 1);
end

function [salida] = x3(t)
    salida = exp(-t) .* cosd(10 * t) .* (escalonUnitario(t)...
        - escalonUnitario(t - 3));
end

function [salida] = X1(n)
    salida = (impulsoUnitario(n + 2) + escalonUnitario(n)...
        + rampaUnitaria(n - 1) - 2 * rampaUnitaria(n - 2) +...
        rampaUnitaria(n - 4) .* (mod(n, 1) == 0));
end

function [salida] = X2(n)
    salida = (1.2 .^ n .* (escalonUnitario(n + 3) - escalonUnitario(n - 7))...
        .* (mod(n, 1) == 0));
end