function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a

   % numarul de puncte de antrenare
   m = size(X, 1);
   
   % initializez valoarea estimata
   pred = 0;
   
   % parcurg fiecare punct de antrenare
   for i = 1:m
      % calculez valoarea kernelului intre x si punctul de antrenare X(i,:)
      K = f(x, X(i,:), f_param);
      
      % adaug la valoarea estimata produsul scalar ponderat cu parametrul
      % corespunzator
      pred = pred + a(i) * K;
   endfor
endfunction
