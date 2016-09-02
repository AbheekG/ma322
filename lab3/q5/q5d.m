cd ..; newton = @newtonsMethod; mn = @modifiedNewton; ooz = @orderOfZero; cd q5;

tol = 1e-6;
max_iter = 1000;

x = -0.5;
[fixed_point, status, iterations, data] = newton(@fd, @dfd, x, tol, max_iter)

%p = ooz(@fd, fixed_point, tol)
p = 2;

x = -0.5;
[fixed_point, status, iterations, data] = mn(@fd, @dfd, p, x, tol, max_iter)