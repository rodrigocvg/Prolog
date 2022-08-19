/* Rodrigo Castro Vieira Gomes*/
/* Ex. 21 */


tamanho([],0).
tamanho([_|X],Novotam):-tamanho(X,Tamanho), Novotam is Tamanho+1.

/* Predicado num_permutações(M,N) que calcule o número total N de permutações possíveis
em uma lista com M elementos. */

num_permutacoes(0,[]).
num_permutacoes(1,[_]).
num_permutacoes(M,[X|Y]):-
                tamanho([X|Y],A),
                num_permutacoes(B,Y),
                M is A*B.

/* 
   Número de permutações da palavra amor

?- num_permutacoes(X,[a,m,o,r]).
X = 24 ;


   Número e permutações de Sérgio, Adriano e Fabíola

?- num_permutacoes(X,[sergio,adriana,fabiola]).
X = 6 ;

*/