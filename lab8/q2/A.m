clear; cd ..; addpath(pwd); cd q2; close all;
image_file = 'A_%d.jpg';
image_num = 1;

syms x;

y(x) = cos(x) + (1 - cos(1))*sin(x)/sin(1) - 1;

a(x) = 0*x;
b(x) = 1 + 0*x;
c(x) = 1 + 0*x;

x0 = 0;
xn = 1;

p1 = 1;
q1 = 0;
r1 = -(1 - cos(1))/sin(1);

p2 = 0;
q2 = 1;
r2 = 0;

n = 100;

[X, Y] = central(a, b, c, x0, xn, p1, q1, r1, p2, q2, r2, n);
figure; plot(X, Y, 'b', X, y(X), 'r');
title('Using Central difference'); xlabel('x'); ylabel('y');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;