cd ..; newton = @newtonsMethod; cd q5;
cd ..; mn = @modifiedNewton; cd q5;

tol = 1e-6;
max_iter = 1000;

x = 0.5;
[fixed_point, status, iterations, data] = newton(@fa, @dfa, x, tol, max_iter)

[fixed_point, status, iterations, data] = mn(@fa, @dfa, p, x, tol, max_iter)