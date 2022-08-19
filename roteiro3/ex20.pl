/* Rodrigo Castro Vieira Gomes*/
/* Ex. 20 */


remove(X,[X|Y], Y).
remove(X,[A|Y], [A|Y1]) :- remove(X,Y,Y1).


/* predicado permutação(L,P) que é verdadeiro se P é uma permutalção simples
dos elementos na lista L.*/ 

permutacao([],[]).
permutacao(Xs,[Y|Zs]):-
    remove(Y,Xs,Ys),
    permutacao(Ys,Zs).

/*a) Quais os anagramas da palavra amor?

?- permutacao([a,m,o,r],X).
X = [a, m, o, r] ;
X = [a, m, r, o] ;
X = [a, o, m, r] ;
X = [a, o, r, m] ;
X = [a, r, m, o] ;
X = [a, r, o, m] ;
X = [m, a, o, r] ;
X = [m, a, r, o] ;
X = [m, o, a, r] ;
X = [m, o, r, a] ;
X = [m, r, a, o] ;
X = [m, r, o, a] ;
X = [o, a, m, r] ;
X = [o, a, r, m] ;
X = [o, m, a, r] ;
X = [o, m, r, a] ;
X = [o, r, a, m] ;
X = [o, r, m, a] ;
X = [r, a, m, o] ;
X = [r, a, o, m] ;
X = [r, m, a, o] ;
X = [r, m, o, a] ;
X = [r, o, a, m] ;
X = [r, o, m, a] ;
false.
*/

/*(b) Carlos e Rose têm três filhos: Sérgio, Adriano e Fabíola. Eles querem tirar uma foto de
recordação na qual todos apareçam lado a lado. Quais são as diferentes fotos que poderão
ser registradas?

?- permutacao([sergio,adriana,fabiola],X).
X = [sergio, adriana, fabiola] ;
X = [sergio, fabiola, adriana] ;
X = [adriana, sergio, fabiola] ;
X = [adriana, fabiola, sergio] ;
X = [fabiola, sergio, adriana] ;
X = [fabiola, adriana, sergio] ;
false.
 */