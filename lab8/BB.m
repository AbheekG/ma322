close all;
syms x;

y(x) = x^3*exp(x)/6 - 5*x*exp(x)/3 + 2*exp(x) - x - 2;

a(x) = -2 + 0*x;
b(x) = 1 + 0*x;
c(x) = x - x*exp(x);

x0 = 0;
xn = 2;

p1 = 0;
q1 = 1;
r1 = 0;

p2 = 0;
q2 = 1;
r2 = 4;

N = [];
E = [];

for i = 1:5
	n = 5*2^i;
	[X, Y] = central(a, b, c, x0, xn, p1, q1, r1, p2, q2, r2, n);
	actual_Y = double(y(X));
	figure; plot(X, Y, 'b', X, actual_Y, 'r');
	title('Using Central difference'); xlabel('x'); ylabel('y');
	e = max(abs(Y - actual_Y'));
	N = [N, n];
	E = [E, e];
end

[N', E']
loglog(N, E);