clear; cd ..; addpath(pwd); cd q5;

syms x;

f(x) = 1 / (x.^2 - 4)^(1/2)
a = 3;
b = 5;
n = 8;

IF = int(f);
actual_value = double(IF(b) - IF(a));

fprintf('\n\nUsing Composite Trapezoid Rule')

h = (b - a) / n;
points = a : h : b;

value = 0;
for i = 1:n
	value = value + trapezoidRule(f, points(i), points(i+1));
end

error_bound = trapezoidError(f, a, b) / n^2;

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));