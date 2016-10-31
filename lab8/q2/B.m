clear; cd ..; addpath(pwd); cd q2; close all;
image_file = 'B_%d.jpg';
image_num = 1;

syms x;

y(x) = sin(pi*x)^2;

a(x) = 0*x;
b(x) = x;
c(x) = -(3 - x - x^2 + x^3)*sin(x) - 4*x*cos(x);

x0 = 0;
xn = 1;

p1 = 1;
q1 = 0;
r1 = 1;

p2 = 1;
q2 = 0;
r2 = -2*sin(1);

n = 100;

[X, Y] = central(a, b, c, x0, xn, p1, q1, r1, p2, q2, r2, n);
figure; plot(X, Y, 'b', X, y(X), 'r');
title('Using Central difference'); xlabel('x'); ylabel('y');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;