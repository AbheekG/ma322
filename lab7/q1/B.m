clear; cd ..; addpath(pwd); cd q1; close all;
image_file = 'B_%d.jpg';
image_num = 1;

syms x t;
tol = 1.0e-10;
max_iter = 100;
n_max = 500;
trai = 2;

f(t, x) = (x^2 + x)/t;
a = 1;
b = 3;
ya = -2;
h = 0.2;

y(t) = 2*t/(1 - 2*t);

fprintf('\n\nExplicit-Euler method\n');
N = [];
E = [];
n = 10;
while(n < n_max)
	N = [N, n];
	[points, values] = eulerExplicit(f, a, b, ya, n);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

triang_x = [N(trai), 2*N(trai)];
triang_y = [E(end-trai-1)/10, 2*E(end-trai-1)/10];
figure; loglog(N, E, 'b', triang_x([1,1,2,1]), triang_y([1,2,1,1]), 'k');
title('Explicit-Euler method'); xlabel('log(n)'); ylabel('log(error(n)/error(n+1))');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

O = [log2(E(1:end-1)./E(2:end)), 0];
fprintf('\nN\tError\t\tOrder')

for i = 1:length(N)-1
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerExplicit(f, a, b, ya, (b - a) / h);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');
title('Explicit-Euler method'); xlabel('t'); ylabel('y');
legend('y = numerically approximated funtion', 'y = original function');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;


fprintf('\n\nImplicit-Euler method\n');
N = [];
E = [];
n = 10;
while(n < n_max)
	N = [N, n];
	[points, values] = eulerImplicit(f, a, b, ya, n, tol, max_iter);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

triang_x = [N(trai), 2*N(trai)];
triang_y = [E(end-trai-1)/10, 2*E(end-trai-1)/10];
figure; loglog(N, E, 'b', triang_x([1,1,2,1]), triang_y([1,2,1,1]), 'k');
title('Implicit-Euler method'); xlabel('log(n)'); ylabel('log(error(n)/error(n+1))');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

O = [log2(E(1:end-1)./E(2:end)), 0];
fprintf('\nN\tError\t\tOrder')

for i = 1:length(N)-1
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerImplicit(f, a, b, ya, (b - a) / h, tol, max_iter);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');
title('Implicit-Euler method'); xlabel('t'); ylabel('y');
legend('y = numerically approximated funtion', 'y = original function');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;


fprintf('\n\nModified-Euler (trapezoid) method\n');
N = [];
E = [];
n = 10;
while(n < n_max)
	N = [N, n];
	[points, values] = eulerModified(f, a, b, ya, n, tol, max_iter);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

triang_x = [N(trai), 2*N(trai)];
triang_y = [E(end-trai-1)/10, 2*E(end-trai-1)/10];
figure; loglog(N, E, 'b', triang_x([1,1,2,1]), triang_y([1,2,1,1]), 'k');
title('Modified-Euler (trapezoid) method'); xlabel('log(n)'); ylabel('log(error(n)/error(n+1))');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

O = [log2(E(1:end-1)./E(2:end)), 0];
fprintf('\nN\tError\t\tOrder')

for i = 1:length(N)-1
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerModified(f, a, b, ya, (b - a) / h, tol, max_iter);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');
title('Modified-Euler (trapezoid) method'); xlabel('t'); ylabel('y');
legend('y = numerically approximated funtion', 'y = original function');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;


fprintf('\n\nMidpoint method\n');
N = [];
E = [];
n = 10;
while(n < n_max)
	N = [N, n];
	[points, values] = eulerMidpoint(f, a, b, ya, n, tol, max_iter);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

triang_x = [N(trai), 2*N(trai)];
triang_y = [E(end-trai-1)/10, 2*E(end-trai-1)/10];
figure; loglog(N, E, 'b', triang_x([1,1,2,1]), triang_y([1,2,1,1]), 'k');
title('Midpoint method'); xlabel('log(n)'); ylabel('log(error(n)/error(n+1))');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

O = [log2(E(1:end-1)./E(2:end)), 0];
fprintf('\nN\tError\t\tOrder')

for i = 1:length(N)-1
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerMidpoint(f, a, b, ya, (b - a) / h, tol, max_iter);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');
title('Midpoint method'); xlabel('t'); ylabel('y');
legend('y = numerically approximated funtion', 'y = original function');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;


fprintf('\n\nRunge Kutta 2th Order (Optimal) method\n');
N = [];
E = [];
n = 10;
while(n < n_max)
	N = [N, n];
	[points, values] = rungeKutta2optimal(f, a, b, ya, n);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

triang_x = [N(trai), 2*N(trai)];
triang_y = [E(end-trai-1)/10, 2*E(end-trai-1)/10];
figure; loglog(N, E, 'b', triang_x([1,1,2,1]), triang_y([1,2,1,1]), 'k');
title('Runge Kutta 2th Order (Optimal) method'); xlabel('log(n)'); ylabel('log(error(n)/error(n+1))');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

O = [log2(E(1:end-1)./E(2:end)), 0];
fprintf('\nN\tError\t\tOrder')

for i = 1:length(N)-1
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = rungeKutta2optimal(f, a, b, ya, (b - a) / h);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');
title('Runge Kutta 2th Order (Optimal) method'); xlabel('t'); ylabel('y');
legend('y = numerically approximated funtion', 'y = original function');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;


fprintf('\n\nRunge Kutta 4th Order method\n');
N = [];
E = [];
n = 10;
while(n < n_max)
	N = [N, n];
	[points, values] = rungeKutta4(f, a, b, ya, n);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

triang_x = [N(trai), 2*N(trai)];
triang_y = [E(end-trai-1)/10, 2*E(end-trai-1)/10];
figure; loglog(N, E, 'b', triang_x([1,1,2,1]), triang_y([1,2,1,1]), 'k');
title('Runge Kutta 4th Order method'); xlabel('log(n)'); ylabel('log(error(n)/error(n+1))');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;

O = [log2(E(1:end-1)./E(2:end)), 0];
fprintf('\nN\tError\t\tOrder')

for i = 1:length(N)-1
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = rungeKutta4(f, a, b, ya, (b - a) / h);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');
title('Runge Kutta 4th Order method'); xlabel('t'); ylabel('y');
legend('y = approximated funtion', 'y = original function');
saveas(gcf, sprintf(image_file, image_num)); image_num = image_num + 1;