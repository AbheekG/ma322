function [points, values] = eulerMidpoint(f, a, b, ya, n, tol)
	syms x t;
	h = (b - a) / n;
	points = a:h:b;
	values = zeros(1, n+1);
	values(1) = ya;

	for i = 1:n
		y = values(i);
		flag = true;
		while flag
			values(i+1) = values(i) + h * double(f((points(i) + points(i+1)) * 0.5, (values(i) + y) * 0.5)) ;
			if abs(values(i+1) - y) < tol
				flag = false;
			end
			y = values(i+1);
		end
	end
end
