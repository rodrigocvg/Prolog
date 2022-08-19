/* Rodrigo Castro Vieira Gomes*/
/* Ex. 14 */




tamAcum([],Acum,Acum).
 tamAcum([_|L],Acum,Tam):-
 	NovoAcum is Acum+1,
 	tamAcum(L,NovoAcum,Tam).

 tam(Lista,Tam):-
 	tamAcum(Lista,0,Tam).
     
/* Predicado bin_para_dec/2 cujo primeiro argumento é uma lista com a representação
na base binária de número natural e o segundo é a representação decimal desse número. */

bin_para_dec([], 0).
bin_para_dec([0|T], X):-
    bin_para_dec(T, X).
bin_para_dec([1|T], X):-
    bin_para_dec(T, X1),
    tam(T, L),
    X is 2**L + X1.