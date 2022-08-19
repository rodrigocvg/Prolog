:- op(300,xfy,h).


horario(X,Y):- X h Y.
2 h 15.

1 h 50.


soma_hora(X h Xs,Y h Ys,Z):- Xs + Ys <60, SomaH is X+Y, SomaM is Xs+Ys, Z = SomaH h SomaM.

soma_hora(X h Xs,Y h Ys,Z):- Xs + Ys >=60, SomaH is X+Y+1, SomaM is Xs+Ys-60, Z = SomaH h SomaM.
