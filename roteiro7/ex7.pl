
:- op(400,xfx,<-).
:- op(300,xfy,h).
:- op(200,xfy,++).
:- op(250,xfy,**).




soma_hora(X h Xs,Y h Ys,Z):- Xs + Ys <60, SomaH is X+Y, SomaM is Xs+Ys, Z = SomaH h SomaM.
soma_hora(X h Xs,Y h Ys,Z):- Xs + Ys >=60, SomaH is X+Y+1, SomaM is Xs+Ys-60, Z = SomaH h SomaM.

mult_hora(X, Y h Ys, Z):- X * Ys <60, MultH is X * Y, MultM is X * Ys, Z = MultH h MultM.
mult_hora(X, Y h Ys, Z):- X * Ys >=60, MultH is X * Y + 1, MultM is X * Ys - 60, Z = MultH h MultM.



Horario <- X h Xs ++ Y h Ys:- soma_hora(X h Xs,Y h Ys,Horario),!.
Horario <- X ** Y h Ys:- mult_hora(X,Y h Ys,Horario).
Horario <- X ** Y h Ys ++ A ** B h Bs:- mult_hora(X,Y h Ys,Aux), mult_hora(A,B h Bs,Aux1), soma_hora(Aux,Aux1,Horario).





