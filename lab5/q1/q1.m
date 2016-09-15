cd ..; hi = @hermiteInterpolation; lip = @lagrangeInterpolatingPolynomial;cd q1;

X = [-1, -0.5, 0, 0.5];
Y0 = log(exp(X) + 2);
Y1 = exp(X) ./ (exp(X) + 2);

value = 0.25;
lip(X, Y0, value);
answer = hi(X, Y0, Y1, value);