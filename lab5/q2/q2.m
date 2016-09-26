cd ..; hi = @hermiteInterpolation; cd q2;

X = [0.1, 0.2, 0.3, 0.4];
syms x;
f = x.*cos(x) - 2*x.^2 + 3.*x - 1;
df = diff(f);

Y0 = subs(f, x, X);
Y1 = subs(df, x, X);

value = 0.2013;
answer = hi(X, Y0, Y1, value);

fprintf('\nf(%f) = %e\n', value, answer);