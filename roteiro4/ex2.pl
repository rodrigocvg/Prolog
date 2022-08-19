/* Ex. 2 */


/* Predicado soma_ate(N,S) que calcule a soma de todos os números entre 1 e N. */

soma_ate(0,0).
soma_ate(N,S):- Aux is N - 1, soma_ate(Aux,S1), S is S1 + N.



 