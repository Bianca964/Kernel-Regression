function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru

  % initializez matricea de kerneluri
  n = size(X, 1);
  K = zeros(n, n);
  
  for i = 1:n
      for j = 1:n
    	  % aplic functia de kernel pe perechea de intrari
          K(i, j) = f(X(i, :), X(j, :), f_param);
      endfor
  endfor

endfunction
