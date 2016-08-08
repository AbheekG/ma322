function [fixed, status] = fixed_point(g, x, epsilon, max_iter)
	for i = 1:max_iter
		y = g(x);
		if(abs(x - y) < epsilon)
			break;
		end
		x = y;
	end

	fixed = y;

	if(abs(x - y) < epsilon)
		status = 0;
	else
		status = 1;
end