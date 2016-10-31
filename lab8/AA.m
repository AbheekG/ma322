close all; syms x;
format short e;

y(x) = 4/x - 2/x^2 + log(x) - 3/2;

a(x) = 4/x;
b(x) = 2/x^2;
c(x) = -2*log(x)/x^2;

x0 = 1;
xn = 2;

p1 = 0;
q1 = 1;
r1 = -1/2;

p2 = 0;
q2 = 1;
r2 = -log(2);

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