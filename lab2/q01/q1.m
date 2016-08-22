format long;
cd ..; bisection = @biSection; cd q01;

a = -100;
b = 100;
epsilon = 1e-10;
delta = 1e-10;
max_iter = 1000;

[root, func_val, status, data] = bisection(@f, a, b, epsilon, delta, max_iter)
loglog(data(:,1), data(:,6));