/* Rodrigo Castro Vieira Gomes*/
/* Ex. 18 */



/* Predicado remove(X,L,L1) que remove a primeira ocorrência do elemento X na lista
L, resultando na lista L1. */

remove(X,[X|Y], Y).
remove(X,[A|Y], [A|Y1]) :- remove(X,Y,Y1).