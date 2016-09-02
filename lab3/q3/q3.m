cd ..; newton = @multivariateNewton; cd q3;

tol = 1e-6;
max_iter = 1000;

x = [0; 0; 0];
[fixed_point, status, iterations, data] = newton(@f, @J, x, tol, max_iter)
[fixed_point, status, iterations, data] = fp(@g, J(fixed_point), x, tol, max_iter)