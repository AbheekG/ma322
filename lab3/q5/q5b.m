cd ..; newton = @newtonsMethod; cd q5;
cd ..; mn = @modifiedNewtonsMethod; cd q5;

tol = 1e-6;
max_iter = 1000;

x = -1.5;
[fixed_point, status, iterations, data] = newton(@fb, @dfb, x, tol, max_iter)

[fixed_point, status, iterations, data] = mn(@fb, @dfb, @ddfb, x, tol, max_iter)