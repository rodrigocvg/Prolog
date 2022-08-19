/* Rodrigo Castro Vieira Gomes*/
/* Ex. 3 */


/* Predicado tresVezes(Entrada,Saida) cujo argumento Entrada é uma lista e cujo
argumento Saída é uma lista consistindo de todos os elementos da primeira lista escritos três
vezes */

tresVezes([],[]).
tresVezes([X|Y],[X,X,X|B]):-
    tresVezes(Y,B).
    

    
