
# KERNEL-REGRESSION

    # linear_kernel(); polynomial_kernel(); gaussian_kernel()
    Aceste functii implementeaza formulele specifice fiecareia, asa cum sunt
prezentate in enuntul temei.

    # function [X_train, y_train, X_pred, y_pred] =
split_dataset (X, y, percentage)
    Aceasta functie este realizata pentru a imparti setul de date primit ca
parametru in 2 subseturi(unul de testare si unul de antrenare) si este
folosita pentru a evalua corectitudinea si performanta modelului. Pentru
setul de antrenare : pentru x_train iau primele nr_train linii din matricea X,
iar pentru y_train iau primele nr_train elemente, urmand ca pentru setul de
testare sa iau restul din matricea X, respectiv restul din vectorul coloana y.

    # function [K] = build_kernel (X, f, f_param)
    Aceasta functie construieste matricea de kerneluri parcurand linie cu linie
matricea data ca parametru 'X' in 2 for-uri pentru a lua toate combinatiile
posibile de linii ale acesteia. Pe aceste perechi de date (de linii) aplica
functia furnizata cu cel de-al 3-lea parametru de asemenea specificat,
punand rezultatul in matricea finala K la indexul corespunzator.

    # function [L] = cholesky (A)
    Aceasta functie realizeaza descompunerea LU a matricei furnizate calculand
fiecare termen de pe diagonala principala, dupa care termenii de sub aceasta.
Matricea U (superior triunghiulara) este de fapt transpusa matricei L
(inferior triunghiulara).

    # function [P] = get_lower_inverse (L)
    Aceasta functie calculeaza inversa unei matrici inferior triunghiulare
prin prisma eliminarii gaussiene : normalizez elementul de pe diagonala
principala din matricea P impartind intreaga linie la valoarea
corespunzatoare din matricea L si actualizez matricea P prin scaderea
produsului dintre randul corespunzator din P si elementul corespunzator
din coloana lui L, din fiecare rand de sub diagonala principala.

    # function [a] = get_prediction_params (K, y, lambda)
    Aceasta functie realizeaza calcularea vectorului de coeficienti 'a'.
Se calculeaza in prealabil matricea auxiliara A a carei inversa este aflata
prin cele 2 functii implementate anterior: se descompune A prin algoritmul
Cholesky in L * L', se calculeaza inversa lui L ca mai apoi sa se deteremine
inversa lui A de care avem nevoie pentru a calcula vectorul 'a' conform
formulei.

    # function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
    Aceasta functie are scopul de a gasi solutia sistemului liniar Ax=b prin
minimizarea normei reziduului (principalul obiectiv). Incep cu aproximarea 
intiala a reziduului. La fiecare iteratie caut 
o directie de deplasare (p) si un pas de deplasare (alpha) astfel incat sa 
reduc cat mai mult norma reziduului. Actualizand reziduul in fiecare iteratie 
realizez ajustarea la noua solutie x. Verific de fiecare data, deopotriva,
daca toleranta a fost atinsa pentru a ma opri, daca nu este atinsa niciodata
se itereaza pana la max_iter.

    # function [a] = get_prediction_params_iterative (K, y, lambda)
    Aceasta functie realizeaza acelasi lucru ca si get_prediction_params()
dar printr-o metoda iterativa. Calculeaza matricea A si vectorul coloana b
in functie de datele primite ca parametru ca mai apoi sa afle matricea de
coeficienti 'a' prin intermediul functiei conjugate_gradient().

    # function pred = eval_value(x, X, f, f_param, a)
    In aceasta functie se parcurg toti vectorii de intrare folositi pentru
a antrena modelul (stocati in matricea X), iar pentru fiecare punct de
antrenare se calculeaza valoarea kernelului intre vectorul de intrare x si
punctul de antrenare respectiv. Valoarea kernelului este apoi ponderata cu
parametrul corespunzator din vectorul coloana 'a' si adaugata la valoarea
estimata 'pred'. Astfel, 'pred' este suma ponderata a valorilor kernelului
intre 'x' si toate punctele de antrenare, utilizand parametrii de predictie
din vectorul 'a'. In final, 'pred' va stoca valoarea estimata pentru vectorul
de intrare 'x' in fucntie de modelul specificat.
