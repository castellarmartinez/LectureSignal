clc, clear, clf

%*********** 1. a ***********%
t1 = linspace(0, 5, 500);
x1 = 5 * sin(12 * t1);

figure(1)
grid on
plot(t1, x1);
axis([0, 5, -6, 6])
xlabel("t")
ylabel("x_{1}")
title("x_{1} = 5sin(12t)")

%*********** 1. b ***********%
t2 = -2:0.01:3;
x2 = (exp(-3 .* t2) - exp(-6 .* t2)) .* (t2 >= 0);

figure(2)
grid on
plot(t2, x2);
axis([0, 3, 0, .3])
xlabel("t")
ylabel("x_{2}")
title("x_{2} = exp(-3t) - exp(-6t)")

%*********** 1. c ***********%
t2 = -2:0.01:3;
x3 = (exp(-3 .* t2) - exp(-6 .* t2)) .* (t2 >= 0 & t2 <= 1);

figure(3)
grid on
plot(t2, x3);
axis([0, 3, 0, .3])
xlabel("t")
ylabel("x_{3}")
title("x_{2} = exp(-3t) - exp(-6t)")

%*********** 2. a ***********%
n1 = 3:9;
X1 = [0, 3.1, 2.5, 3.7, 3.2, 2.6, 0];

figure(4)
grid on
stem(n1, X1);
axis([3, 9, 0, 4])
xlabel("n")
ylabel("x_{1}")
title("x_{1}")

%*********** 2. b ***********%
n2 = 0:99;
X2 = sin(0.2*n2);

figure(5)
grid on
stem(n2, X2);
axis([0, 99, -1.5, 1.5])
xlabel("n")
ylabel("x_{2}")
title("x_{2} = sin[0.2n]")

%*********** 2. c ***********%
n3 = -20:59;
X3 = sin(0.2*n3) .* (n3 >= 0 & n3 <= 39);

figure(6)
grid on
stem(n3, X3);
axis([-20, 59, -1.5, 1.5])
xlabel("n")
ylabel("x_{1}")
title("x_{1} = sin[0.2n]")