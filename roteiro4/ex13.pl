/* Ex. 13 */


/* Predicado fat(N,F) que é verdadeiro sempre que o fat de N é F.*/
fat(0,1). 
fat(1,1).
fat(N,F) :-
   N>0,
   N1 is N-1,
   fat(N1,F1),
   F is N * F1.



