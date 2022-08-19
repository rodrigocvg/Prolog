/*   a) Primeiro (e mais facil), escreva-o com a ajuda de = e \+   */
nu(Y,X):- \+ X = Y.


/*  b) Segundo, escreva-o com a ajuda de =, mas nao use \+ e not.  */
nu1(X,Y):- X = Y, !, fail.
nu1(X,Y).


/* c) Terceiro, escreva usando uma combinacao de corte e fail. Nao use =, \+ e not.  */
nu2(X,X):- !, fail.
nu2(X,Y).








