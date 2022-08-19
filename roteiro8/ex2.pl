pais(alemanha, europa, 83, [franca, belgica, holanda, suica]).
pais(australia, oceania, 25, []).
pais(belgica, europa, 11, [franca, holanda, alemanha]).
pais(espanha, europa, 47, [portugal, franca]).
pais(franca, europa, 67, [espanha, suica, belgica, alemanha,
italia]).
pais(holanda, europa, 17, [belgica, alemanha]).
pais(indonesia, oceania, 268, []).
pais(italia, europa, 60, [franca, suica]).
pais(madagascar, africa, 26, []).
pais(portugal, europa, 10, [espanha]).
pais(suica, europa, 8, [franca, alemanha, italia]).


tamanho([], 0). 
tamanho([_|R], N):-
        tamanho(R, N1),     
        N is N1 + 1.

pop_elevada(Cont, L):- findall(Y-X,(pais(X,Cont,Y,_),Y>15),L).

isolados_grandes(Lista):- setof(Cont,M^K^A^X^(pais(K,Cont,M,A),(tamanho(A,X),X=<2),(pop_elevada(Cont,L),tamanho(L,Y),Y>=2)),Lista).