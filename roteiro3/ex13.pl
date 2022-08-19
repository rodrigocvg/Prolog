/* Rodrigo Castro Vieira Gomes*/
/* Ex. 13 */

/* Predicado dec_para_bin/2 cujo primeiro argumento é um número naturaL N escrito
como decimal e o segundo uma lista com a representação na base binária de N. */


dec_para_bin(N,Y):- 
	dec_para_bin(N,[],Y).
dec_para_bin(0,Y,[0|Y]).
dec_para_bin(1,Y,[1|Y]).
dec_para_bin(X,Y,Res):- 
    X > 1,
    A is X mod 2,
    B is X // 2,  
    dec_para_bin(B,[A|Y],Res).