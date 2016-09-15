function [result] = dli(X, value, a)
	A = [X(1 : a-1), X(a+1 : end)];
	li = prod(value - A) ./ prod(X(a) - A);
	result = li .* (sum(1 ./ (value - A)));
end