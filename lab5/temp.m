X = [1,2,3,4,5];
syms x;
omega = prod(x - X);
domega = diff(omega, x, 1)
ddomega = diff(omega, x, 2)

subs(omega, x, 2)
subs(domega, x, 1.5)
subs(domega, x, 2)

subs(omega, x, 1.5) ./ (subs(domega, x, 2) * (1.5 - 2))

subs(ddomega, x, 1.5)

li(X, 1.5, 2)