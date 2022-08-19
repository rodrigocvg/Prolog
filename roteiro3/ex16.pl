/* Rodrigo Castro Vieira Gomes*/
/* Ex. 16 */




multiplica(X,Y,Res):- Res is X*Y.


/*predicado multiEsc/3 cujo primeiro argumento é um inteiro, o segundo é  uma lista de inteiros e o terceiro é o resultado da multiplicação
escalar do segundo argumento pelo primeiro, utilizanddo o predicado multiplica/2, que multiplica dois termos. */ 
multiEsc(_,[],[]).
multiEsc(X,[A|B],[C|D]):- multiplica(X,A,C), multiEsc(X,B,D).