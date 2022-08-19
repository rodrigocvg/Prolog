/* Ex. 4 */



remove([],[]).
remove([X|Y],L):- member(X,Y),remove(Y,L).
remove([X|Y],[X|A]):- \+ member(X,Y), remove(Y,A).

/* Predicado sem_repeticao(L1,L2), com L2 sendo o resultado da remoção
de todos os elementos repetidos de L1. */
sem_repeticao([],[]).
sem_repeticao([X],[X]).

sem_repeticao([X,X|Y],L):- remove([X|Y],L).
sem_repeticao([X,X1|Y],[X|A]):- X \= X1, remove([X1|Y],A).