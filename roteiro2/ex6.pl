/* Rodrigo Castro Vieira Gomes*/
/* Ex. 6 */

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



/* Predicado viagem/3 tal que ele não somente diga a você
em quais cidades intermediárias você passaría, mas também como ir de
uma cidade a outra, ou seja, de carro, trem ou avião.
*/  

viagem(X,Y,vai(X,decarro,Y)):- deCarro(X,Y).
viagem(X,Y,vai(X,detrem,Y)):- deTrem(X,Y).
viagem(X,Y,vai(X,deaviao,Y)):- deAviao(X,Y).

viagem(X,Y,vai(X,decarro,A,B)):-deCarro(X,A),viagem(A,Y,B).
viagem(X,Y,vai(X,detrem,A,B)):-deTrem(X,A),viagem(A,Y,B).
viagem(X,Y,vai(X,deaviao,A,B)):-deAviao(X,A),viagem(A,Y,B).