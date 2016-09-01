cd ..; newton = @newtonsMethod; cd q5;
cd ..; mn = @modifiedNewtonsMethod; cd q5;

tol = 1e-6;
max_iter = 1000;

x = 0.5;
[fixed_point, status, iterations, data] = newton(@fc, @dfc, x, tol, max_iter)

[fixed_point, status, iterations, data] = mn(@fc, @dfc, @ddfc, x, tol, max_iter)