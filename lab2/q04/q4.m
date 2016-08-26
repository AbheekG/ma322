format short e;
cd ..; fixed_point = @fixedPoint; cd q04;

x = 1;
epsilon = 1e-2;
max_iter = 1000;

[fixed, status] = fixed_point(@g, x, epsilon, max_iter)