/* Rodrigo Castro Vieira Gomes*/
/* Ex. 11 */




/* Predicao digitosAcum, que usa acumulador para evitar ter que inveter a lista */
digitosAcum(0,Acum,Acum ).  
digitosAcum(X,Y,Acum):- 
  A is X mod 10,                 
  B is X // 10,
  digitosAcum(B,[A|Y],Acum).

/* Predicado dígitos/2 cujo primeiro argumento é um número natural N e o segundo
argumento é uma lista contendo os dígitos de N. */
digitos(0,[0]).
digitos(N,L):-
	digitosAcum(N,[],L).

