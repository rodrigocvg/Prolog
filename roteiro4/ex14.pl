/* Ex. 14 */

/* Predicado fatdup(N,F) que é verdadeiro sempre que o fatorial duplo de N é F. */
fatdup(0, 1).
fatdup(1, 1).
fatdup(N, F):- 
	N > 0,
	N1 is N-2,
	fatdup(N1, F1),
	F is N * F1. 