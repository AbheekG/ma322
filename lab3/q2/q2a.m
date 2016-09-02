cd ..; newton = @multivariateNewton; cd q2;

tol = 1e-6;
max_iter = 1000;

x = [0; 0];
[fixed_point, status, iterations, data] = newton(@fa, @Ja, x, tol, max_iter)
[fixed_point, status, iterations, data] = fp(@ga, Ja(fixed_point), x, tol, max_iter)