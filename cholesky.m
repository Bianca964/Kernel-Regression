function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita
    n = size(A, 1);
    L = zeros(n,n);

    for j = 1:n
        L(j, j) = sqrt(A(j, j) - L(j, 1:j-1) * L(j, 1:j-1)');
        for i=j+1:n
            L(i, j) = (A(i, j) - L(j, 1:j-1) * L(i, 1:j-1)') / L(j, j);
        endfor
    endfor

endfunction
