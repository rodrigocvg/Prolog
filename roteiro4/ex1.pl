/* Ex. 1 */


somarec([],[],_).
somarec([H|T],[X|Y],Res):- X is Res + H, somarec(T,Y,X).

/* Predicado soma_acum(L,K) que, dado uma lista L de inteiros, retorna uma lista K
na qual cada elemento é a soma de todos os elementos em L até a mesma posição. */

soma_acum(L,K):-somarec(L,K,0).
