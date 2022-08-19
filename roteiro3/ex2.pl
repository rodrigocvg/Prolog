/* Rodrigo Castro Vieira Gomes*/
/* Ex. 2 */


/* Base de conhecimento */ 
traducao(uno, um).
traducao(due, dois).
traducao(tre, tres).
traducao(quattro, quatro).
traducao(cinque, cinco).
traducao(sei, seis).
traducao(sette, sete).
traducao(otto, oito).
traducao(nove, nove).

/* Predicao traduz_lista/2 que traduz uma lista de números escritos em italiano,
para uma lista correspondente em português. */

traduz_lista([],[]).
traduz_lista([X|Y],[A|B]):-
        traducao(X,A),
        traduz_lista(Y,B).
  



