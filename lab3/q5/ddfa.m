function [y] = ddfa(x)
	y = 2 + 2 * exp(-x) - 2 * x * exp(-x) + 2 * exp(-x) + 4 * exp(-2 * x);
end