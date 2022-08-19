/* Ex. 3 */
digitosAcum(0,Acum,Acum ).  
digitosAcum(X,Y,Acum):- 
  A is X mod 10,                 
  B is X // 10,
  digitosAcum(B,[A|Y],Acum).


digitos(0,[0]).
digitos(N,L):-
	digitosAcum(N,[],L).