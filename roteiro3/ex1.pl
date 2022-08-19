/* Rodrigo Castro Vieira Gomes*/
/* Ex. 1 */

/* Base de conhecimento */
membro(X,[X|_]).
membro(X,[_|T]):-
    membro(X,T).

/* Série de rastreamentos envolvendo o predicado membro. */
/* 
?- trace.
true.

[trace]  ?- membro(x,[a,1,x,2]).
   Call: (10) membro(x, [a, 1, x, 2]) ? creep
   Call: (11) membro(x, [1, x, 2]) ? creep
   Call: (12) membro(x, [x, 2]) ? creep
   Exit: (12) membro(x, [x, 2]) ? creep
   Exit: (11) membro(x, [1, x, 2]) ? creep
   Exit: (10) membro(x, [a, 1, x, 2]) ? creep
true . 

O prolog faz 3 chamadas (Call), e retorna com sucesso as 3 (Exit).

------------------------------------------------------------------------------------------

[trace]  ?- membro(z,[a,1,x,2]).
   Call: (10) membro(z, [a, 1, x, 2]) ? creep
   Call: (11) membro(z, [1, x, 2]) ? creep
   Call: (12) membro(z, [x, 2]) ? creep
   Call: (13) membro(z, [2]) ? creep
   Call: (14) membro(z, []) ? creep
   Fail: (14) membro(z, []) ? creep
   Fail: (13) membro(z, [2]) ? creep
   Fail: (12) membro(z, [x, 2]) ? creep
   Fail: (11) membro(z, [1, x, 2]) ? creep
   Fail: (10) membro(z, [a, 1, x, 2]) ? creep
false.

O prolog faz 5 chamadas (Call), e nenhuma delas retorna com sucesso(pois z não é membro da lista [a,1,x,2] ), o que resulta na porta "Fail".
------------------------------------------------------------------------------------------

[trace]  ?- membro(X,[a,1,x,2]).
   Call: (10) membro(_714, [a, 1, x, 2]) ? creep
   Exit: (10) membro(a, [a, 1, x, 2]) ? creep
X = a ;                                               % O prolog faz uma chamada e uma saída que retorna com sucesso mostrando que "a" é membro da lista
   Redo: (10) membro(_714, [a, 1, x, 2]) ? creep
   Call: (11) membro(_714, [1, x, 2]) ? creep
   Exit: (11) membro(1, [1, x, 2]) ? creep
   Exit: (10) membro(1, [a, 1, x, 2]) ? creep
X = 1 ;                                               % O prolog faz uma chamada de retrocesso após o comando ";", realiza outra porta de entrada e duas saídas que mostram que "1" é membro da lista.
   Redo: (11) membro(_714, [1, x, 2]) ? creep
   Call: (12) membro(_714, [x, 2]) ? creep
   Exit: (12) membro(x, [x, 2]) ? creep
   Exit: (11) membro(x, [1, x, 2]) ? creep
   Exit: (10) membro(x, [a, 1, x, 2]) ? creep
X = x ;                                               % O prolog faz uma chamada de retrocesso após o comando ";", realiza outra porta de entrada e três saídas que mostram que "x" é membro da lista.     
   Redo: (12) membro(_714, [x, 2]) ? creep
   Call: (13) membro(_714, [2]) ? creep
   Exit: (13) membro(2, [2]) ? creep
   Exit: (12) membro(2, [x, 2]) ? creep
   Exit: (11) membro(2, [1, x, 2]) ? creep
   Exit: (10) membro(2, [a, 1, x, 2]) ? creep
X = 2 ;                                               % O prolog faz uma chamada de retrocesso após o comando ";", realiza outra porta de entrada e três saídas que mostram que "2" é membro da lista.
   Redo: (13) membro(_714, [2]) ? creep
   Call: (14) membro(_714, []) ? creep
   Fail: (14) membro(_714, []) ? creep
   Fail: (13) membro(_714, [2]) ? creep
   Fail: (12) membro(_714, [x, 2]) ? creep
   Fail: (11) membro(_714, [1, x, 2]) ? creep
   Fail: (10) membro(_714, [a, 1, x, 2]) ? creep
false.                                                %  O prolog faz outra chamada de retrocesso, tentando achar mais um elemento da lista, 
                                                        e o resultado são apenas portas de saídas que resultaram em falha, pois não existe mais nenhum elemento nessa lista.
*/