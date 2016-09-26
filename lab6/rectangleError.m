function [result] = rectangleError(f, a, b)
	syms x;
	df = diff(f);
	ddf = diff(df);
	val = double(solve(ddf, x));
	% val = val((val <= b) & (val >= a));
	result = 0;

	for k = 1:size(val, 1)
		if ((val(k) >= a) & (val(k) <= b))
			result = max(result, abs(double(df(val(k)))) );
		end
	end

	result = max(result, abs(double(df(a))) );
	result = max(result, abs(double(df(b))) );
	result = (result * (b - a).^2 )/ 2;
end