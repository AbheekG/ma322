format short e;
cd ..; newton = @newtonsMethod; cd q07;

x = 1.5;
tol = 1e-5;
max_iter = 1000;

[fixed, status, iterations] = newton(@f1, @df1, x, tol, max_iter)