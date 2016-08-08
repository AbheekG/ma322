x = 1;
epsilon = 1e-5;
[fixed, status] = fixed_point(@g, x, epsilon, max_iter)