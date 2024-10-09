function retval = polynomial_kernel (x, y, d)
  # TO DO: implement polynomial kernel function

  dot_product = x * y';
  retval = (1 + dot_product) .^ d;
  
endfunction
