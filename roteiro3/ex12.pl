/* Rodrigo Castro Vieira Gomes*/
/* Ex. 12 */

num_palavra(0,zero).
num_palavra(1,um).
num_palavra(2,dois).
num_palavra(3,três).
num_palavra(4,quatro).
num_palavra(5,cinco).
num_palavra(6,seis).
num_palavra(7,sete).
num_palavra(8,oito).
num_palavra(9,nove).


digitosAcum(0,Acum,Acum ).  
digitosAcum(X,Y,Acum):- 
  A is X mod 10,                 
  B is X // 10,
  digitosAcum(B,[A|Y],Acum).

digitos(0,[0]).
digitos(N,L):-
	digitosAcum(N,[],L).

/* Predicado traduz_lista do exercício 2, modificado para transformar um número em sua representação escrita*/
traduz_lista([],[]).
traduz_lista([X|Y],[A|B]):-
        num_palavra(X,A),
        traduz_lista(Y,B).
  

/* Predicado dígitos_em_palavras/2 cujo primeiro argumento é um número natural
N e o segundo argumento é uma lista contendo os dígitos de N convertidos em palavras. */

digitos_em_palavras(N,X):-
   digitos(N,L),
   traduz_lista(L,X).

    