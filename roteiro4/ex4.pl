/* Ex. 4 */


concatena([],L,L).
concatena([X|Y],V,[A|B]):- concatena(Y,V,B).

/* Predicado segmento(S,L) que testa se o seu primeiro argumento é um segmento
contínuo contido em qualquer parte da lista L */

segmento([],[]).
segmento(S,L):- concatena(_,V,L), concatena(S,_,V).



