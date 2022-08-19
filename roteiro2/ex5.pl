/* Rodrigo Castro Vieira Gomes*/
/* Ex. 5 */

deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).

deTrem(metz,frankfurt).
deTrem(saarbruecken,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,paris).

deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(bangkok,auckland).
deAviao(losAngeles,auckland).

/* Predicado viagem/3 que diga a você como viajar. 
de um lugar para o outro. */
viagem(X,Y,vai(X,Y)):- deCarro(X,Y);deTrem(X,Y);deAviao(X,Y).
viagem(X,Y,vai(X,A,B)):-
        (deCarro(X,A);deTrem(X,A);deAviao(X,A)),
        viagem(A,Y,B).


/*

?- viagem(valmont,paris,vai(valmont,metz,vai(metz,paris))).
true ;

?- viagem(valmont,losAngeles,X).
X = vai(valmont, saarbruecken, vai(saarbruecken, paris, vai(paris, losAngeles))) ;
X = vai(valmont, metz, vai(metz, paris, vai(paris, losAngeles))) ;
false.

*/