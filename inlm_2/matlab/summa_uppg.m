%% summa
format long;
tol = 5e-10;

n = ceil(1/(3*tol)^(1/3));
k = 1:n;
a = 1 ./ k .^4;

summa = sum(a);
fel = (pi^4)/90 - summa;

display(n);
display(fel);

%% 1.3

a0 = 1;
ge