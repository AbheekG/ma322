clear; cd ..; addpath(pwd); cd q1; close all;
image_file = 'B_%d.jpg';
image_num = 1;

syms x;

a(x) = 2 + 0*x;
b(x) = 1 + 0*x;
c(x) = -x;

x0 = 0;
xn = 1;

p1 = 0;
q1 = 1;
r1 = 0;

p2 = 0;
q2 = 1;
r2 = 0;

n = 100;

[X, Y] = forward(a, b, c, x0, xn, p1, q1, r1, p2, q2, r2, n);
figure; plot(X, Y);
title('Using Forward difference'); xlabel('x'); ylabel('y');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

[X, Y] = backward(a, b, c, x0, xn, p1, q1, r1, p2, q2, r2, n);
figure; plot(X, Y);
title('Using Backward difference'); xlabel('x'); ylabel('y');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

[X, Y] = central(a, b, c, x0, xn, p1, q1, r1, p2, q2, r2, n);
figure; plot(X, Y);
title('Using Central difference'); xlabel('x'); ylabel('y');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;