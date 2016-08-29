cd ..; newton = @multivariateNewton; cd q1;

tol = 1e-6;
max_iter = 1000;

x = [0; 1];
[fixed_point, status, iterations, data] = newton(@fb, @Jb, x, tol, max_iter)

x = [1; 1];
[fixed_point, status, iterations, data] = newton(@fb, @Jb, x, tol, max_iter)