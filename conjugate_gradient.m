function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat

  % initializez variabilele
  x = x0;
  r = b - A * x;
  p = r;
  r_norm_old = r' * r;

  % iterez pana la atingerea numarului maxim de iteratii sau a tolerantei
  for i = 1:max_iter
	Ap = A * p;

	% calculez pasul optim
	alpha = r_norm_old / (p' * Ap);

	% actualizez vectorul x si reziduul
	x = x + alpha * p;
	r = r - alpha * Ap;

	% calculez norma reziduului la patrat
	r_norm_new = r' * r;

	% verific daca toleranta a fost atinsa
	if sqrt(r_norm_new) < tol
		break;
	endif

	% Calculam directia de cautare noua
	beta = r_norm_new / r_norm_old;

	% actualizez directia de cautare
	p = r + beta * p;
	
	% actualizez norma reziduului
	r_norm_old = r_norm_new;
  endfor
endfunction
