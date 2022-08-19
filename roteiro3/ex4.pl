/* Rodrigo Castro Vieira Gomes*/
/* Ex. 4  */


/* Predicado intercala1 que recebe três listas como argumentos e 
intercala os elementos da duas primeiras listas gerando uma terceira */

intercala1([X],[Y],[X,Y]).
intercala1([X|A],[Y|B],[X,Y|Li]):- intercala1(A,B,Li).
