function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  m = size(K, 1);
  
  % construiesc matricea A pentru metoda gradientului conjugat
  A = lambda * eye(m) + K;  
  b = lambda * y;
  
  % initializez vectorul x0 cu o valoare aleatoare
  x0 = rand(m, 1);
  
  % setez toleranta si numarul maxim de iteratii
  tol = 1e-6;
  max_iter = 1000;
  
  % aplic metoda gradientului conjugat pentru a rezolva sistemul
  a = conjugate_gradient(A, b, x0, tol, max_iter);

endfunction
