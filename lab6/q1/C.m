cd ..; rec = @rectangleRule; recError = @rectangleError; cd q1;

syms x;

f(x) = 2.*x / (x.^2 - 4)
a = 1;
b = 1.6;

value = rec(f, a, b);

F = int(f);
actual_value = double(F(b) - F(a));

error_bound = recError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n', abs(actual_value - value));