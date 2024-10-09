function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  m = size(K, 1);
  Im = eye(m);

  % calculez matricea auxiliara A
  A = lambda * Im + K;

  % folosesc metoda Cholesky pentru a obtine descompunerea LL'
  L = cholesky(A);

  % obtin matricea inversa a matricei inferioare L
  Linv = get_lower_inverse(L);

  % obtin inversa matricei A
  A_inv = Linv' * Linv;

  % calculez vectorul de coeficienti a
  a = lambda * A_inv * y;
endfunction
