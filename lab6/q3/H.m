clear; cd ..; addpath(pwd); cd q3;

syms x;

f(x) = 1 / (x .* log(x))
a = exp(1) ;
b = exp(1) + 1;

IF = int(f);
actual_value = double(IF(b) - IF(a));

fprintf('\n\nUsing Mid-point Rule')
value = midpointRule(f, a, b);
error_bound = midpointError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));

fprintf('\n\nUsing Trapezoid Rule')
value = trapezoidRule(f, a, b);
error_bound = trapezoidError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));

fprintf('\n\nUsing Simpson Rule')
value = simpsonRule(f, a, b);
error_bound = simpsonError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));

fprintf('\n\nUsing Corrected-Trapezoid Rule')
df(x) = diff(f);
value = correctedTrapezoid(f, a, b);
error_bound = correctedTrapezoidError(f, a, b);

fprintf('\nCalculated value of integral = %e', value);
fprintf('\nActual value of integral = %e', actual_value);
fprintf('\nError Bound = %e', error_bound);
fprintf('\nError = %e\n\n', abs(actual_value - value));