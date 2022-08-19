subconjunto([],_).
subconjunto([X|Y],A):- member(X,A), subconjunto(Y,A).

