/* Rodrigo Castro Vieira Gomes*/
/* Ex. 17 */



/* Predicado prodEsc/3
cujo primeiro argumento é uma lista de inteiros, o segundo argumento é uma lista de inteiros com
o mesmo comprimento que a primeira e o terceiro argumento é o produto escalar do primeiro
argumento pelo segundo. */ 


prodEsc([],[],0).
prodEsc([X|Y],[A|B],Res):- A1 is (X*A), prodEsc(Y,B,A2), Res is A2 + A1.
