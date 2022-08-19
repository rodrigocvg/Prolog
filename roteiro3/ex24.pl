/* Rodrigo Castro Vieira Gomes*/
/* Ex. 24 */

remove(X,[X|Y], Y).
remove(X,[A|Y], [A|Y1]) :- remove(X,Y,Y1).
/* Predicado arranjo(N,L,A) que é verdadeiro quando A é um arranjo simples com N elementos da lista L. */


arranjo(0,_,[]).
arranjo(R, X,[Y|Z]) :- A is R-1, remove(Y,X,Y1), arranjo(A,Y1,Z).



