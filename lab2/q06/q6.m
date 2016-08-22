format long;
cd ..; fixed_point = @fixedPoint; cd q06;

x = 1.5;
epsilon = 1e-4;
max_iter = 1000;

a = -1:0.01:4;
plot(a, a,'r', a, g1(a),'b');
a = -10:0.01:10;
input('press any key to continue');
plot(a, a,'r', a, g2(a),'b');

%[fixed status] = fixed_point(@g, x, epsilon, max_iter);