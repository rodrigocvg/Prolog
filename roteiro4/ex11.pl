/* Ex. 11 */


/* predicado ocorre(L,N,X) que é verdadeiro se, e somente se, X é o elemento que
ocorre na posição N da lista L. */
ocorre([X|_],1,X).
ocorre([_|Y],N,X):- N > 1, Z is N-1, ocorre(Y,Z,X).