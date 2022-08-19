/* Rodrigo Castro Vieira Gomes*/
/* Ex. 7  */


/*  Predicado subconjunto/2 que recebe duas listas (de constantes) como argumentos
e verifica se a primeira lista é um subconjunto da segunda */ 

subconjunto([],_).
subconjunto([X|Y],A):- member(X,A), subconjunto(Y,A).