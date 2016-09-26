cd ..; hi = @hermiteInterpolation; cd q3;

X = [0, 3, 5, 8, 13];

Y0 = [0, 225, 383, 623, 993];
Y1 = [75, 77, 80, 74, 72];

value = 10;
answer = hi(X, Y0, Y1, value);

fprintf('\nAt t = %d sec. Position = %e\n', value, answer);