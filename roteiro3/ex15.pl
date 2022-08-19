/* Rodrigo Castro Vieira Gomes*/
/* Ex. 15 */


par(N):- N mod 2 =:= 0.




/* Um predicado pares/2 cujo primeiro argumento é uma lista de números naturais e cujo
segundo argumento é a lista dos inteiros pares contidos na primeira lista */

pares([],[]).
pares([X|Y],[X|B]):-
        par(X),
        pares(Y,B).
pares([_|Y],[_|B]):- pares(Y,B).




/* pares([],[]).
pares([X|Y],[A|B]):-
        par(X),
        A = X,
        pares(Y,B).
pares([X|Y],[A|B]):- pares(Y,B).
*/


        
