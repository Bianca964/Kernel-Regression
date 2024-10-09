function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function

  diff = x - y;
  norm_squared = diff * diff';
  retval = exp(-norm_squared / (2 * (sigma^2)));

endfunction
