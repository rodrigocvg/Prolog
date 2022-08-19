/* Rodrigo Castro Vieira Gomes*/
/* Ex. 5  */


/* Predicado intercala2 que recebe três listas como argumentos e intercala os
elementos da duas primeiras listas gerando uma terceira */

intercala2([X],[Y],[[X,Y]]).
intercala2([X|A],[Y|B],[[X,Y]|Li]):- intercala2(A,B,Li).