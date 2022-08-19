/* Ex. 9 */

/* A)
disjunto(L,K) é verdadeiro se, e somente se, L e K são disjuntos, ou seja, não possuem
elementos em comum.
*/
disjunto([], _).
disjunto([X|_], L):- member(X,L),!, fail.
disjunto([_|Y], L):- disjunto(Y, L).

/* B) 
uniao(L,K,M) é verdadeiro se, e somente se, M é a união de L e K
*/
uniao([], L, L).
uniao(L, [], L).
uniao([X|Y], L, A):- member(X, L),!,uniao(Y, L, A).
uniao([X|Y], L, [X|A]):- uniao(Y, L, A).

/* C) 
intersecao(L,K,M) é verdadeiro se, e somente se, M é a interseção de L e K.
*/
intersecao([], _, []).
intersecao(_, [], []).
intersecao([X|Y], L, [X|A]):- member(X, L),!,intersecao(Y, L, A).
intersecao([X|Y], L, A) :- \+ member(X, L), intersecao(Y, L, A).
	
/* D) 
diferenca(L,K,M) é verdadeiro se, e somente se, M é a diferença entre L e K.
*/
diferenca([],_,[]).
diferenca([X|Y], A, B):- member(X, A), diferenca(Y, A, B).
diferenca([X|Y], A, [X|B]):- \+member(X, A), diferenca(Y, A, B).