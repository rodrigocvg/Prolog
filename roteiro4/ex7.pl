/* Ex. 7 */


/*  Predicado bissexto(A) que recebe um ano e é verdadeiro se ele for bissexto ou
falso em caso contrário.*/

bissexto(A):-
    (A mod 4 =:= 0, A mod 100 =\= 0);
    (A mod 400 =:= 0).