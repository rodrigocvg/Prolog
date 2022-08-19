/* Rodrigo Castro Vieira Gomes*/
/* Ex. 6  */


/* Predicado intercala3 que recebe três listas como argumentos e intercala
os elementos da duas primeiras listas gerando uma terceira  */

intercala3([X],[Y],[junta(X,Y)]).
intercala3([X|A],[Y|B],[junta(X,Y)|Li]) :- intercala3(A,B,Li).