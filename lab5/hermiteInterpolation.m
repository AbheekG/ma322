function [result] = hermiteInterpolation(X, Y0, Y1, value)
	n = size(X,2);
	H0 = zeros(n, 1);
	H1 = H0;
	for i = 1:n
		H0(i) = Y0(i) * (1 - 2*dli(X, X(i), i)*(value - X(i))) * (li(X, value, i).^2);
		H1(i) = Y1(i) * (value - X(i)) * (li(X, value, i)^2);

	result = sum(H0 + H1);
end
