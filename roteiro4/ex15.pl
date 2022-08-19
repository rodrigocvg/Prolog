/* Ex. 15 */


fat(0,1). 
fat(1,1).
fat(N,F) :-
   N>0,
   N1 is N-1,
   fat(N1,F1),
   F is N * F1.


/* Predicado fatquad(N,F) que é verdadeiro sempre que o fatorial quádruplo de N é F*/
fatquad(N,F):-
    N1 is 2 * N,
    fat(N1,Den),
    fat(N,Num),
    F is Den / Num.
