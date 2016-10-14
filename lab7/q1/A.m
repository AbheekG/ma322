clear; cd ..; addpath(pwd); cd q1;

syms x t;
tol = 10^(-3);

f(t, x) = (2 - 2*t*x) / (t^2 + 1);
a = 0;
b = 1;
ya = 1;
h = 0.1;

y(t) = (2*t + 1)/(t^2 + 1);

fprintf('\n\nExplicit-Euler method\n');
N = [];
E = [];
n = 1;
while(n < 257)
	N = [N, n];
	[points, values] = eulerExplicit(f, a, b, ya, n);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

figure; loglog(N, E);

O = [log2(E(1:end-1)./E(2:end)), nan];
fprintf('\nN\tError\t\tOrder')
for i = 1:length(N)
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerExplicit(f, a, b, ya, (b - a) / h);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');


fprintf('\n\nImplicit-Euler method\n');
N = [];
E = [];
n = 1;
while(n < 257)
	N = [N, n];
	[points, values] = eulerImplicit(f, a, b, ya, n, tol);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

figure; loglog(N, E);

O = [log2(E(1:end-1)./E(2:end)), nan];
fprintf('\nN\tError\t\tOrder')
for i = 1:length(N)
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerImplicit(f, a, b, ya, (b - a) / h, tol);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');


fprintf('\n\nModified-Euler method\n');
N = [];
E = [];
n = 1;
while(n < 257)
	N = [N, n];
	[points, values] = eulerModified(f, a, b, ya, n, tol);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

figure; loglog(N, E);

O = [log2(E(1:end-1)./E(2:end)), nan];
fprintf('\nN\tError\t\tOrder')
for i = 1:length(N)
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerModified(f, a, b, ya, (b - a) / h, tol);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');


fprintf('\n\nMidpoint method\n');
N = [];
E = [];
n = 1;
while(n < 257)
	N = [N, n];
	[points, values] = eulerMidpoint(f, a, b, ya, n, tol);
	actual_values = double(y(points));
	err = max(abs(values - actual_values));
	E = [E, err];
	n = n*2;
end

figure; loglog(N, E);

O = [log2(E(1:end-1)./E(2:end)), nan];
fprintf('\nN\tError\t\tOrder')
for i = 1:length(N)
	fprintf('\n%d\t%e\t%f', N(i), E(i), O(i))
end

[points, values] = eulerMidpoint(f, a, b, ya, (b - a) / h, tol);
actual_values = double(y(points));
figure; plot(points, values, 'r', points, actual_values, 'b');




% fprintf('\nActual value of integral = %e', actual_value);
% fprintf('\nError Bound = %e', error_bound);
% fprintf('\nError = %e\n\n', abs(actual_value - value));