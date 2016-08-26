format short e;
cd ..; newton = @newtonsMethod; cd q09;

tol = 1e-6;
max_iter = 1000;

x = -0.5;
[fixed, status, iterations] = newton(@f, @df, x, tol, max_iter)

x = 0.5;
[fixed, status, iterations] = newton(@f, @df, x, tol, max_iter)