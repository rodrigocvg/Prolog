/* Ex. 12 */


fatores_primos(1,[]).
fatores_primos(N,[X|Y]):- Z X = 2, fatores_primos(Z,Y).