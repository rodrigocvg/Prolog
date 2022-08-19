/* Ex. 5 */




separa_dup([],[]).
separa_dup([X|Y],[[X],[B]]):- separa_dup(Y,B).

/* separa_dup([X|Y],[[X]]).
separa_dup([X|Y],[X|B]):- separa_dup(Y,B). 
separa_dup([X|Y],[A|B]):- X \= A, separa_dup(Y,B). */

