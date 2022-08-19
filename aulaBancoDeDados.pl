/* 
–asserta/1 posiciona o material a ser inserido no início da base de dados

–assertz/1posiciona o material a ser inserido no fimda base de dados

*/

/* Corte Vermelho */

:- dynamic consulta/3.

somaAoQuadrado(X,Y,Res):- consulta(X,Y,Res), !.
somaAoQuadrado(X,Y,Res):- Res is (X+Y) * (X+Y), assert(consulta(X,Y,Res)).


/* Corte Verde *//*

:- dynamic consulta/3.

somaAoQuadrado(X,Y,Res):- consulta(X,Y,Res), !.
somaAoQuadrado(X,Y,Res):- \+ consulta(X,Y,Res), !, Res is (X+Y) * (X+Y), assert(consulta(X,Y,Res)).

*/

filha(maria,carla).
filha(carla,carolina).n
filha(carolina,laura).
filha(laura,rosa).
descende(X,Y):- filha(X,Y).
descende(X,Y):- filha(X,Z),descende(Z,Y).