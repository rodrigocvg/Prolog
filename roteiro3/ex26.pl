/* Rodrigo Castro Vieira Gomes*/
/* Ex. 26 */

fatorial(0,1). 
fatorial(N,F) :-
   N>0,
   N1 is N-1,
   fatorial(N1,F1),
   F is N * F1.
/* Predicado num_arranjos(M,P,N) que calcule o número total N de arranjos simples
possíveis em uma lista com M elementos, tomados P a P. */


num_arranjos(M,P,N) :- fatorial(M,M1), P1 is M-P, fatorial(P1,P2), N is M1/P2.


