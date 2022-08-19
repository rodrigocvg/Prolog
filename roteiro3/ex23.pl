/* Rodrigo Castro Vieira Gomes*/
/* Ex. 23 */

fatorial(0,1). 
fatorial(N,F) :-
   N>0,
   N1 is N-1,
   fatorial(N1,F1),
   F is N * F1.

/* Predicado num_combinações(M,P,N) que calcule o número total N de combinações
simples possíveis em uma lista com M elementos, tomados P a P. */

num_combinacoes(M,P,N) :- length(M, Tam), fatorial(Tam, X), fatorial(P, Y), A1 is Tam-P, fatorial(A1,A2), N1 is Y*A2, N is X/N1.

/* 

?- num_combinacoes([a1,a2,a3,a4,a5,a6,a7,a8,a9,a10],5,X).
X = 252 ;
false.

?- num_combinacoes([m1,m2,m3,m4,m5,m6,m7,m8,m9],3,X).
X = 84 ;
false.

?- num_combinacoes([c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11],4,X).
X = 330 ;
false.


*/