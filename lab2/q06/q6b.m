format short e;
cd ..; fixed_point = @fixedPoint; cd q06;

x = 1;
epsilon = 1e-5;
max_iter = 1000;

a = -10:0.01:10;
plot(a, a,'r', a, g2(a),'b');

[fixed, status, iterations] = fixed_point(@g2, x, epsilon, max_iter)