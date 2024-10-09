function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower

  n = size(L, 1);  
  P = eye(n);

  % aplic eliminarea gaussiana pentru a inversa matricea inferior triunghiulara
  for j = 1:n
      % normalizez elementul de pe diagonala principala
      P(j, :) = P(j, :) / L(j, j);

      % actualizez matricea
      for i = j+1:n
          P(i, :) = P(i, :) - P(j, :) * L(i, j);
      endfor
  endfor

endfunction
