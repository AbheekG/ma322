clear; cd ..; addpath(pwd); cd q6;

syms x;

f(x) = x .* log(1 + x)
a = -0.5;
b = 0.5;
n = 6;

IF = int(f);
actual_value = double(IF(b) - IF(a));

h = (b - a) / n;
points = a : h : b;

fprintf('\n\nUsing Composite Mid-point Rule')

value = 0;
for i = 1:n
	value = value + midpointRule(f, points(i), points(i+1));
end

error_bound = midpointError(f, a, b) / n^2;

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));

fprintf('\n\nUsing Composite Simpson Rule')

value = 0;
for i = 1:n
	value = value + simpsonRule(f, points(i), points(i+1));
end

error_bound = simpsonError(f, a, b) / n^4;

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));