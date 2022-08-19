
subconjunto([],[]).
subconjunto([Prim|Resto],[Prim|Sub]):- subconjunto(Resto,Sub).
subconjunto([_|Resto],Sub):- subconjunto(Resto,Sub).


conj_potencia(L1,L):- findall(X,subconjunto(L1,X),L).

