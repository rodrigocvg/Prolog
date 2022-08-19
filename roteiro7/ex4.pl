:- op(300,xfy,h).


horario(X,Y):- X h Y.

mult_hora(X, Y h Ys, Z):- X * Ys <60, MultH is X * Y, MultM is X * Ys, Z = MultH h MultM.

mult_hora(X, Y h Ys, Z):- X * Ys >=60, MultH is X * Y + 1, MultM is X * Ys - 60, Z = MultH h MultM.
