/* Rodrigo Castro Vieira Gomes*/
/* Ex. 25 */

remove(X,[X|Y], Y).
remove(X,[A|Y], [A|Y1]) :- remove(X,Y,Y1).

arranjo(0,_,[]).
arranjo(R, X,[Y|Z]) :- A is R-1, remove(Y,X,Y1), arranjo(A,Y1,Z).

/* Quais os números de 3 algarismos que podem ser formados com os algarismos 1, 2, 3, 4, 5
e 7, sem repeti-los?

?- arranjo(3,[1,2,3,4,5,6,7],X).
X = [1, 2, 3] ;
X = [1, 2, 4] ;
X = [1, 2, 5] ;
X = [1, 2, 6] ;
X = [1, 2, 7] ;
X = [1, 3, 2] ;
X = [1, 3, 4] ;
X = [1, 3, 5] ;
X = [1, 3, 6] ;
X = [1, 3, 7] ;
X = [1, 4, 2] ;
X = [1, 4, 3] ;
X = [1, 4, 5] ;
X = [1, 4, 6] ;
X = [1, 4, 7] ;
X = [1, 5, 2] ;
X = [1, 5, 3] ;
X = [1, 5, 4] ;
X = [1, 5, 6] ;
X = [1, 5, 7] ;
X = [1, 6, 2] ;
X = [1, 6, 3] ;
X = [1, 6, 4] ;
X = [1, 6, 5] ;
X = [1, 6, 7] ;
X = [1, 7, 2] ;
X = [1, 7, 3] ;
X = [1, 7, 4] ;
X = [1, 7, 5] ;
X = [1, 7, 6] ;
X = [2, 1, 3] ;
X = [2, 1, 4] ;
X = [2, 1, 5] ;
X = [2, 1, 6] ;
X = [2, 1, 7] ;
X = [2, 3, 1] ;
X = [2, 3, 4] ;
X = [2, 3, 5] ;
X = [2, 3, 6] ;
X = [2, 3, 7] ;
X = [2, 4, 1] ;
X = [2, 4, 3] ;
X = [2, 4, 5] ;
X = [2, 4, 6] ;
X = [2, 4, 7] ;
X = [2, 5, 1] ;
X = [2, 5, 3] ;
X = [2, 5, 4] ;
X = [2, 5, 6] ;
X = [2, 5, 7] ;
X = [2, 6, 1] ;
X = [2, 6, 3] ;
X = [2, 6, 4] ;
X = [2, 6, 5] ;
X = [2, 6, 7] ;
X = [2, 7, 1] ;
X = [2, 7, 3] ;
X = [2, 7, 4] ;
X = [2, 7, 5] ;
X = [2, 7, 6] ;
X = [3, 1, 2] ;
X = [3, 1, 4] ;
X = [3, 1, 5] ;
X = [3, 1, 6] ;
X = [3, 1, 7] ;
X = [3, 2, 1] ;
X = [3, 2, 4] ;
X = [3, 2, 5] ;
X = [3, 2, 6] ;
X = [3, 2, 7] ;
X = [3, 4, 1] ;
X = [3, 4, 2] ;
X = [3, 4, 5] ;
X = [3, 4, 6] ;
X = [3, 4, 7] ;
X = [3, 5, 1] ;
X = [3, 5, 2] ;
X = [3, 5, 4] ;
X = [3, 5, 6] ;
X = [3, 5, 7] ;
X = [3, 6, 1] ;
X = [3, 6, 2] ;
X = [3, 6, 4] ;
X = [3, 6, 5] ;
X = [3, 6, 7] ;
X = [3, 7, 1] ;
X = [3, 7, 2] ;
X = [3, 7, 4] ;
X = [3, 7, 5] ;
X = [3, 7, 6] ;
X = [4, 1, 2] ;
X = [4, 1, 3] ;
X = [4, 1, 5] ;
X = [4, 1, 6] ;
X = [4, 1, 7] ;
X = [4, 2, 1] ;
X = [4, 2, 3] ;
X = [4, 2, 5] ;
X = [4, 2, 6] ;
X = [4, 2, 7] ;
X = [4, 3, 1] ;
X = [4, 3, 2] ;
X = [4, 3, 5] ;
X = [4, 3, 6] ;
X = [4, 3, 7] ;
X = [4, 5, 1] ;
X = [4, 5, 2] ;
X = [4, 5, 3] ;
X = [4, 5, 6] ;
X = [4, 5, 7] ;
X = [4, 6, 1] ;
X = [4, 6, 2] ;
X = [4, 6, 3] ;
X = [4, 6, 5] ;
X = [4, 6, 7] ;
X = [4, 7, 1] ;
X = [4, 7, 2] ;
X = [4, 7, 3] ;
X = [4, 7, 5] ;
X = [4, 7, 6] ;
X = [5, 1, 2] ;
X = [5, 1, 3] ;
X = [5, 1, 4] ;
X = [5, 1, 6] ;
X = [5, 1, 7] ;
X = [5, 2, 1] ;
X = [5, 2, 3] ;
X = [5, 2, 4] ;
X = [5, 2, 6] ;
X = [5, 2, 7] ;
X = [5, 3, 1] ;
X = [5, 3, 2] ;
X = [5, 3, 4] ;
X = [5, 3, 6] ;
X = [5, 3, 7] ;
X = [5, 4, 1] ;
X = [5, 4, 2] ;
X = [5, 4, 3] ;
X = [5, 4, 6] ;
X = [5, 4, 7] ;
X = [5, 6, 1] ;
X = [5, 6, 2] ;
X = [5, 6, 3] ;
X = [5, 6, 4] ;
X = [5, 6, 7] ;
X = [5, 7, 1] ;
X = [5, 7, 2] ;
X = [5, 7, 3] ;
X = [5, 7, 4] ;
X = [5, 7, 6] ;
X = [6, 1, 2] ;
X = [6, 1, 3] ;
X = [6, 1, 4] ;
X = [6, 1, 5] ;
X = [6, 1, 7] ;
X = [6, 2, 1] ;
X = [6, 2, 3] ;
X = [6, 2, 4] ;
X = [6, 2, 5] ;
X = [6, 2, 7] ;
X = [6, 3, 1] ;
X = [6, 3, 2] ;
X = [6, 3, 4] ;
X = [6, 3, 5] ;
X = [6, 3, 7] ;
X = [6, 4, 1] ;
X = [6, 4, 2] ;
X = [6, 4, 3] ;
X = [6, 4, 5] ;
X = [6, 4, 7] ;
X = [6, 5, 1] ;
X = [6, 5, 2] ;
X = [6, 5, 3] ;
X = [6, 5, 4] ;
X = [6, 5, 7] ;
X = [6, 7, 1] ;
X = [6, 7, 2] ;
X = [6, 7, 3] ;
X = [6, 7, 4] ;
X = [6, 7, 5] ;
X = [7, 1, 2] ;
X = [7, 1, 3] ;
X = [7, 1, 4] ;
X = [7, 1, 5] ;
X = [7, 1, 6] ;
X = [7, 2, 1] ;
X = [7, 2, 3] ;
X = [7, 2, 4] ;
X = [7, 2, 5] ;
X = [7, 2, 6] ;
X = [7, 3, 1] ;
X = [7, 3, 2] ;
X = [7, 3, 4] ;
X = [7, 3, 5] ;
X = [7, 3, 6] ;
X = [7, 4, 1] ;
X = [7, 4, 2] ;
X = [7, 4, 3] ;
X = [7, 4, 5] ;
X = [7, 4, 6] ;
X = [7, 5, 1] ;
X = [7, 5, 2] ;
X = [7, 5, 3] ;
X = [7, 5, 4] ;
X = [7, 5, 6] ;
X = [7, 6, 1] ;
X = [7, 6, 2] ;
X = [7, 6, 3] ;
X = [7, 6, 4] ;
X = [7, 6, 5] ;
false.

------------------------------------------------------------------------------------------------------------------------------------------------


Suponha que temos oito corredores disputando uma corrida. O primeiro classificado recebe
uma medalha de ouro, o segundo de prata e o terceiro de bronze. Admitindo que todas as
classificações podem ocorrer, quais as distintas maneiras de se atribuir as medalhas?


?- arranjo(3,[c1,c2,c3,c4,c5,c6,c7,c8],X).
X = [c1, c2, c3] ;
X = [c1, c2, c4] ;
X = [c1, c2, c5] ;
X = [c1, c2, c6] ;
X = [c1, c2, c7] ;
X = [c1, c2, c8] ;
X = [c1, c3, c2] ;
X = [c1, c3, c4] ;
X = [c1, c3, c5] ;
X = [c1, c3, c6] ;
X = [c1, c3, c7] ;
X = [c1, c3, c8] ;
X = [c1, c4, c2] ;
X = [c1, c4, c3] ;
X = [c1, c4, c5] ;
X = [c1, c4, c6] ;
X = [c1, c4, c7] ;
X = [c1, c4, c8] ;
X = [c1, c5, c2] ;
X = [c1, c5, c3] ;
X = [c1, c5, c4] ;
X = [c1, c5, c6] ;
X = [c1, c5, c7] ;
X = [c1, c5, c8] ;
X = [c1, c6, c2] ;
X = [c1, c6, c3] ;
X = [c1, c6, c4] ;
X = [c1, c6, c5] ;
X = [c1, c6, c7] ;
X = [c1, c6, c8] ;
X = [c1, c7, c2] ;
X = [c1, c7, c3] ;
X = [c1, c7, c4] ;
X = [c1, c7, c5] ;
X = [c1, c7, c6] ;
X = [c1, c7, c8] ;
X = [c1, c8, c2] ;
X = [c1, c8, c3] ;
X = [c1, c8, c4] ;
X = [c1, c8, c5] ;
X = [c1, c8, c6] ;
X = [c1, c8, c7] ;
X = [c2, c1, c3] ;
X = [c2, c1, c4] ;
X = [c2, c1, c5] ;
X = [c2, c1, c6] ;
X = [c2, c1, c7] ;
X = [c2, c1, c8] ;
X = [c2, c3, c1] ;
X = [c2, c3, c4] ;
X = [c2, c3, c5] ;
X = [c2, c3, c6] ;
X = [c2, c3, c7] ;
X = [c2, c3, c8] ;
X = [c2, c4, c1] ;
X = [c2, c4, c3] ;
X = [c2, c4, c5] ;
X = [c2, c4, c6] ;
X = [c2, c4, c7] ;
X = [c2, c4, c8] ;
X = [c2, c5, c1] ;
X = [c2, c5, c3] ;
X = [c2, c5, c4] ;
X = [c2, c5, c6] ;
X = [c2, c5, c7] ;
X = [c2, c5, c8] ;
X = [c2, c6, c1] ;
X = [c2, c6, c3] ;
X = [c2, c6, c4] ;
X = [c2, c6, c5] ;
X = [c2, c6, c7] ;
X = [c2, c6, c8] ;
X = [c2, c7, c1] ;
X = [c2, c7, c3] ;
X = [c2, c7, c4] ;
X = [c2, c7, c5] ;
X = [c2, c7, c6] ;
X = [c2, c7, c8] ;
X = [c2, c8, c1] ;
X = [c2, c8, c3] ;
X = [c2, c8, c4] ;
X = [c2, c8, c5] ;
X = [c2, c8, c6] ;
X = [c2, c8, c7] ;
X = [c3, c1, c2] ;
X = [c3, c1, c4] ;
X = [c3, c1, c5] ;
X = [c3, c1, c6] ;
X = [c3, c1, c7] ;
X = [c3, c1, c8] ;
X = [c3, c2, c1] ;
X = [c3, c2, c4] ;
X = [c3, c2, c5] ;
X = [c3, c2, c6] ;
X = [c3, c2, c7] ;
X = [c3, c2, c8] ;
X = [c3, c4, c1] ;
X = [c3, c4, c2] ;
X = [c3, c4, c5] ;
X = [c3, c4, c6] ;
X = [c3, c4, c7] ;
X = [c3, c4, c8] ;
X = [c3, c5, c1] ;
X = [c3, c5, c2] ;
X = [c3, c5, c4] ;
X = [c3, c5, c6] ;
X = [c3, c5, c7] ;
X = [c3, c5, c8] ;
X = [c3, c6, c1] ;
X = [c3, c6, c2] ;
X = [c3, c6, c4] ;
X = [c3, c6, c5] ;
X = [c3, c6, c7] ;
X = [c3, c6, c8] ;
X = [c3, c7, c1] ;
X = [c3, c7, c2] ;
X = [c3, c7, c4] ;
X = [c3, c7, c5] ;
X = [c3, c7, c6] ;
X = [c3, c7, c8] ;
X = [c3, c8, c1] ;
X = [c3, c8, c2] ;
X = [c3, c8, c4] ;
X = [c3, c8, c5] ;
X = [c3, c8, c6] ;
X = [c3, c8, c7] ;
X = [c4, c1, c2] ;
X = [c4, c1, c3] ;
X = [c4, c1, c5] ;
X = [c4, c1, c6] ;
X = [c4, c1, c7] ;
X = [c4, c1, c8] ;
X = [c4, c2, c1] ;
X = [c4, c2, c3] ;
X = [c4, c2, c5] ;
X = [c4, c2, c6] ;
X = [c4, c2, c7] ;
X = [c4, c2, c8] ;
X = [c4, c3, c1] ;
X = [c4, c3, c2] ;
X = [c4, c3, c5] ;
X = [c4, c3, c6] ;
X = [c4, c3, c7] ;
X = [c4, c3, c8] ;
X = [c4, c5, c1] ;
X = [c4, c5, c2] ;
X = [c4, c5, c3] ;
X = [c4, c5, c6] ;
X = [c4, c5, c7] ;
X = [c4, c5, c8] ;
X = [c4, c6, c1] ;
X = [c4, c6, c2] ;
X = [c4, c6, c3] ;
X = [c4, c6, c5] ;
X = [c4, c6, c7] ;
X = [c4, c6, c8] ;
X = [c4, c7, c1] ;
X = [c4, c7, c2] ;
X = [c4, c7, c3] ;
X = [c4, c7, c5] ;
X = [c4, c7, c6] ;
X = [c4, c7, c8] ;
X = [c4, c8, c1] ;
X = [c4, c8, c2] ;
X = [c4, c8, c3] ;
X = [c4, c8, c5] ;
X = [c4, c8, c6] ;
X = [c4, c8, c7] ;
X = [c5, c1, c2] ;
X = [c5, c1, c3] ;
X = [c5, c1, c4] ;
X = [c5, c1, c6] ;
X = [c5, c1, c7] ;
X = [c5, c1, c8] ;
X = [c5, c2, c1] ;
X = [c5, c2, c3] ;
X = [c5, c2, c4] ;
X = [c5, c2, c6] ;
X = [c5, c2, c7] ;
X = [c5, c2, c8] ;
X = [c5, c3, c1] ;
X = [c5, c3, c2] ;
X = [c5, c3, c4] ;
X = [c5, c3, c6] ;
X = [c5, c3, c7] ;
X = [c5, c3, c8] ;
X = [c5, c4, c1] ;
X = [c5, c4, c2] ;
X = [c5, c4, c3] ;
X = [c5, c4, c6] ;
X = [c5, c4, c7] ;
X = [c5, c4, c8] ;
X = [c5, c6, c1] ;
X = [c5, c6, c2] ;
X = [c5, c6, c3] ;
X = [c5, c6, c4] ;
X = [c5, c6, c7] ;
X = [c5, c6, c8] ;
X = [c5, c7, c1] ;
X = [c5, c7, c2] ;
X = [c5, c7, c3] ;
X = [c5, c7, c4] ;
X = [c5, c7, c6] ;
X = [c5, c7, c8] ;
X = [c5, c8, c1] ;
X = [c5, c8, c2] ;
X = [c5, c8, c3] ;
X = [c5, c8, c4] ;
X = [c5, c8, c6] ;
X = [c5, c8, c7] ;
X = [c6, c1, c2] ;
X = [c6, c1, c3] ;
X = [c6, c1, c4] ;
X = [c6, c1, c5] ;
X = [c6, c1, c7] ;
X = [c6, c1, c8] ;
X = [c6, c2, c1] ;
X = [c6, c2, c3] ;
X = [c6, c2, c4] ;
X = [c6, c2, c5] ;
X = [c6, c2, c7] ;
X = [c6, c2, c8] ;
X = [c6, c3, c1] ;
X = [c6, c3, c2] ;
X = [c6, c3, c4] ;
X = [c6, c3, c5] ;
X = [c6, c3, c7] ;
X = [c6, c3, c8] ;
X = [c6, c4, c1] ;
X = [c6, c4, c2] ;
X = [c6, c4, c3] ;
X = [c6, c4, c5] ;
X = [c6, c4, c7] ;
X = [c6, c4, c8] ;
X = [c6, c5, c1] ;
X = [c6, c5, c2] ;
X = [c6, c5, c3] ;
X = [c6, c5, c4] ;
X = [c6, c5, c7] ;
X = [c6, c5, c8] ;
X = [c6, c7, c1] ;
X = [c6, c7, c2] ;
X = [c6, c7, c3] ;
X = [c6, c7, c4] ;
X = [c6, c7, c5] ;
X = [c6, c7, c8] ;
X = [c6, c8, c1] ;
X = [c6, c8, c2] ;
X = [c6, c8, c3] ;
X = [c6, c8, c4] ;
X = [c6, c8, c5] ;
X = [c6, c8, c7] ;
X = [c7, c1, c2] ;
X = [c7, c1, c3] ;
X = [c7, c1, c4] ;
X = [c7, c1, c5] ;
X = [c7, c1, c6] ;
X = [c7, c1, c8] ;
X = [c7, c2, c1] ;
X = [c7, c2, c3] ;
X = [c7, c2, c4] ;
X = [c7, c2, c5] ;
X = [c7, c2, c6] ;
X = [c7, c2, c8] ;
X = [c7, c3, c1] ;
X = [c7, c3, c2] ;
X = [c7, c3, c4] ;
X = [c7, c3, c5] ;
X = [c7, c3, c6] ;
X = [c7, c3, c8] ;
X = [c7, c4, c1] ;
X = [c7, c4, c2] ;
X = [c7, c4, c3] ;
X = [c7, c4, c5] ;
X = [c7, c4, c6] ;
X = [c7, c4, c8] ;
X = [c7, c5, c1] ;
X = [c7, c5, c2] ;
X = [c7, c5, c3] ;
X = [c7, c5, c4] ;
X = [c7, c5, c6] ;
X = [c7, c5, c8] ;
X = [c7, c6, c1] ;
X = [c7, c6, c2] ;
X = [c7, c6, c3] ;
X = [c7, c6, c4] ;
X = [c7, c6, c5] ;
X = [c7, c6, c8] ;
X = [c7, c8, c1] ;
X = [c7, c8, c2] ;
X = [c7, c8, c3] ;
X = [c7, c8, c4] ;
X = [c7, c8, c5] ;
X = [c7, c8, c6] ;
X = [c8, c1, c2] ;
X = [c8, c1, c3] ;
X = [c8, c1, c4] ;
X = [c8, c1, c5] ;
X = [c8, c1, c6] ;
X = [c8, c1, c7] ;
X = [c8, c2, c1] ;
X = [c8, c2, c3] ;
X = [c8, c2, c4] ;
X = [c8, c2, c5] ;
X = [c8, c2, c6] ;
X = [c8, c2, c7] ;
X = [c8, c3, c1] ;
X = [c8, c3, c2] ;
X = [c8, c3, c4] ;
X = [c8, c3, c5] ;
X = [c8, c3, c6] ;
X = [c8, c3, c7] ;
X = [c8, c4, c1] 
X = [c8, c4, c2] ;
X = [c8, c4, c3] ;
X = [c8, c4, c5] ;
X = [c8, c4, c6] ;
X = [c8, c4, c7] ;
X = [c8, c5, c1] ;
X = [c8, c5, c2] ;
X = [c8, c5, c3] ;
X = [c8, c5, c4] ;
X = [c8, c5, c6] ;
X = [c8, c5, c7] ;
X = [c8, c6, c1] ;
X = [c8, c6, c2] ;
X = [c8, c6, c3] ;
X = [c8, c6, c4] ;
X = [c8, c6, c5] ;
X = [c8, c6, c7] ;
X = [c8, c7, c1] ;
X = [c8, c7, c2] ;
X = [c8, c7, c3] ;
X = [c8, c7, c4] ;
X = [c8, c7, c5] ;
X = [c8, c7, c6] ;
false.




*/