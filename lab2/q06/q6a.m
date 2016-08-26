format short e;
cd ..; fixed_point = @fixedPoint; cd q06;

x = 1;
epsilon = 1e-5;
max_iter = 1000;

a = -1:0.01:4;
plot(a, a,'r', a, g1(a),'b');

[fixed, status, iterations] = fixed_point(@g1, x, epsilon, max_iter)