cd ..; newton = @multivariateNewton; cd q2;

tol = 1e-6;
max_iter = 1000;

x = [0; 0];
[fixed_point, status, iterations, data] = newton(@fb, @Jb, x, tol, max_iter)