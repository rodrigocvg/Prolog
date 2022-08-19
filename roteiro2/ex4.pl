/* Rodrigo Castro Vieira Gomes*/
/* Ex. 4 */


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


/* Predicado viagem/2 que determina se é possível viajar
de um lugar a outro usando qualquer meio de transporte disponível */
viagem(X,Y):- deCarro(X,Y);deTrem(X,Y);deAviao(X,Y).
viagem(X,Y):- 
        (deCarro(X,A);deTrem(X,A);deAviao(X,A)),
        viagem(A,Y).