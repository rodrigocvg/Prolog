/* Ex. 10 */

/* predicado ocorrências(X,L,N) que é verdadeiro se, e somente se, X ocorre N
vezes na lista L. */

ocorrencias(_,[],0).
ocorrencias(X,[X|Y],N):- ocorrencias(X,Y,W), N is W+1.
ocorrencias(X,[H|Y],N):- \+(X=H), ocorrencias(X,Y,N).
