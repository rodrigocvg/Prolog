/* Rodrigo Castro Vieira Gomes*/
/* Ex. 19 */

/* Predicado insere(X,L,L1)
que insere um elemento X em alguma posição da lista L, resultando na lista L1. */



insere(X, Y, [X|Y]).
insere(X,[A|Y], [A|Y1]) :- insere(X,Y,Y1).

