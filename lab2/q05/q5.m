format long;
cd ..; fixed_point = @fixedPoint; cd q05;

x = 1;
epsilon = 1e-5;
max_iter = 1000;

[fixed, status] = fixed_point(@g1, x, epsilon, max_iter)

[fixed, status] = fixed_point(@g2, x, epsilon, max_iter)

[fixed, status] = fixed_point(@g3, x, epsilon, max_iter)

[fixed, status] = fixed_point(@g4, x, epsilon, max_iter)