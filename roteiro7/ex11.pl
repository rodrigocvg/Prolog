positivo(X, Resul) :- X>=0, Resul is X.
negativo(Y, Resul) :- not(Y>=0), Resul is Y.

separa([],[],[]).
separa([X|Xs],[Y|Ys], Z) :- positivo(X, Y), !, separa(Xs,Ys,Z).
separa([X|Xs],Y, [Z|Zs]) :- negativo(X, Z), !, separa(Xs,Y,Zs).