/* Rodrigo Castro Vieira Gomes*/
/* Ex. 8 */

subconjunto([],_).
subconjunto([X|Y],A):- member(X,A), subconjunto(Y,A).

/* Predicado superconjunto/2 que recebe duas listas (de constantes) como argumentos
e verifica se a primeira lista é um superconjunto da segunda */

superconjunto(X,Y):- subconjunto(Y,X).
