function [root, val, status] = biSection(f, a, b, epsilon, delta, max_iter)
	fa = f(a);
	fb = f(b);
	for i = 1:max_iter
		c = (a + b) / 2;
		fc = f(c);
		if(abs(fc) < epsilon & abs(a-b) < delta)
			break;
		elseif (fa*fc < 0)
			b = c;
			fb = fc;
		else
			a = c;
			fa = fc;
		end
	end

	root = c;
	val = fc;

	if(abs(fc) < epsilon & abs(a-b) < delta)
		status = 0;
	elseif(fc < epsilon)
		status = 1;
	else
		status = 2;
end