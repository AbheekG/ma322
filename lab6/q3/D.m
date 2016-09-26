cd ..; rec = @rectangleRule; recError = @rectangleError; cd q3;

syms x;

f(x) = exp(3.*x) .* sin(2 .* x)
a = 0;
b = pi/4;

value = rec(f, a, b);

F = int(f);
actual_value = double(F(b) - F(a));

error_bound = recError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n', abs(actual_value - value));