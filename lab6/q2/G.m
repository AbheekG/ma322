cd ..; rec = @rectangleRule; recError = @rectangleError; cd q2;

syms x;

f(x) = x .* exp(-x);
a = -1;
b = 2;

value = rec(f, a, b);

F = int(f);
actual_value = double(F(b) - F(a));

error_bound = recError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n', abs(actual_value - value));