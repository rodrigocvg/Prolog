/* Rodrigo Castro Vieira Gomes*/
/* Ex. 9 */


junta([ ], Y, Y).
junta([X|A], B, [X|C]) :- junta(A, B, C).

/* Predicado duplicada(Lista) que é verdadeiro
quando Lista é uma lista duplicada(utilizando o predicado junta, definido anteriormente, que junta duas listas)  */ 


duplicada(Lista):- junta(X,X,Lista).