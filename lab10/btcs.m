function [W, X, T] = btcs(c, t0, tn, x0, xn, ut0, ux0, uxn, n, m)
	k = (tn - t0)/n;
	h = (xn - x0)/m;
	lamda = c*k/h^2;

	X = x0:h:xn;
	T = t0:k:tn;

	N = length(T);
	M = length(X);

	W = zeros(N, M);

	for j = 1:M
		W(1, j) = ut0(X(j));
	end

	A = zeros(M, M);
	b = zeros(M, 1);
	A(1, 1) = 1;
	A(M, M) = 1;
	for j = 2:M-1
		A(j, j-1) = -lamda;
		A(j, j) = (1 + 2*lamda);
		A(j, j+1) = -lamda;
	end
	
	for i = 2:N
		b(1) = ux0(T(i));
		b(M) = uxn(T(i));
		for j = 2:M-1
			b(j) = W(i-1, j);
		end

		W(i, :) = (A\b)';
	end
end