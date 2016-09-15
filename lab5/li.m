function [result] = li(X, value, a)
	A = [X(1 : a-1), X(a+1 : end)];
	result = prod(value - A) ./ prod(X(a) - A);
end


% function [result] = li(X, value, i)
% 	I = eye(size(X, 2));
% 	A = ones(size(X, 2));
% 	A = A .* X;
% 	A = A .- X';
% 	A = A .+ I;
% 	A = prod(A);
% 	B = ones(size(X, 2));
% 	B = B .* X;
% 	B = value .- B;
% 	B = B .* (1 .- I) .+ I;
% 	B = prod(B');

% 	result = prod( B./A );
% end