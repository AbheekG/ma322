function [points, values] = eulerModified(f, a, b, ya, n, tol)
	syms x t;
	h = (b - a) / n;
	points = a:h:b;
	values = zeros(1, n+1);
	values(1) = ya;

	for i = 1:n
		y = values(i);
		flag = true;
		while flag
			values(i+1) = values(i) + 0.5 * h * double(f(points(i), values(i)) + f(points(i+1), y)) ;
			if abs(values(i+1) - y) < tol
				flag = false;
			end
			y = values(i+1);
		end
	end
end
