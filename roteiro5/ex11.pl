/* Ex. 11 */




s(Conta) --> as(Conta), bs(Conta), cs(Conta). 
as(0) --> [].
as(suc(Conta)) --> [a], as(Conta).
bs(0) --> [].
bs(suc(Conta)) --> [b], bs(Conta).
cs(0) --> [].
cs(suc(Conta)) --> [c], cs(Conta).

/* Realizando rastreamento com trace:

[trace]  ?- s(C,[a,a,b,b,c,c],[]).
   Call: (10) s(_16744, [a, a, b, b, c, c], []) ? creep
   Call: (11) as(_16744, [a, a, b, b, c, c], _18028) ? creep
   Exit: (11) as(0, [a, a, b, b, c, c], [a, a, b, b, c, c]) ? creep
   Call: (11) bs(0, [a, a, b, b, c, c], _19546) ? creep
   Exit: (11) bs(0, [a, a, b, b, c, c], [a, a, b, b, c, c]) ? creep
   Call: (11) cs(0, [a, a, b, b, c, c], []) ? creep
   Fail: (11) cs(0, [a, a, b, b, c, c], []) ? creep
   Redo: (11) as(_16744, [a, a, b, b, c, c], _18028) ? creep
   Call: (12) as(_23340, [a, b, b, c, c], _18028) ? creep
   Exit: (12) as(0, [a, b, b, c, c], [a, b, b, c, c]) ? creep
   Exit: (11) as(suc(0), [a, a, b, b, c, c], [a, b, b, c, c]) ? creep
   Call: (11) bs(suc(0), [a, b, b, c, c], _25616) ? creep
   Fail: (11) bs(suc(0), [a, b, b, c, c], _25616) ? creep
   Redo: (12) as(_23340, [a, b, b, c, c], _18028) ? creep
   Call: (13) as(_27894, [b, b, c, c], _18028) ? creep
   Exit: (13) as(0, [b, b, c, c], [b, b, c, c]) ? creep
   Exit: (12) as(suc(0), [a, b, b, c, c], [b, b, c, c]) ? creep
   Exit: (11) as(suc(suc(0)), [a, a, b, b, c, c], [b, b, c, c]) ? creep
   Call: (11) bs(suc(suc(0)), [b, b, c, c], _30928) ? creep
   Call: (12) bs(suc(0), [b, c, c], _30928) ? creep
   Call: (13) bs(0, [c, c], _30928) ? creep
   Exit: (13) bs(0, [c, c], [c, c]) ? creep
   Exit: (12) bs(suc(0), [b, c, c], [c, c]) ? creep
   Exit: (11) bs(suc(suc(0)), [b, b, c, c], [c, c]) ? creep
   Call: (11) cs(suc(suc(0)), [c, c], []) ? creep
   Call: (12) cs(suc(0), [c], []) ? creep
   Call: (13) cs(0, [], []) ? creep
   Exit: (13) cs(0, [], []) ? creep
   Exit: (12) cs(suc(0), [c], []) ? creep
   Exit: (11) cs(suc(suc(0)), [c, c], []) ? creep
   Exit: (10) s(suc(suc(0)), [a, a, b, b, c, c], []) ? creep
C = suc(suc(0)) .

Funcionou normalmente com o mesmo tanto de As, Bs e Cs.



[trace]  ?- s(C,[a,a,b,b,c],[]).
   Call: (10) s(_42910, [a, a, b, b, c], []) ? creep
   Call: (11) as(_42910, [a, a, b, b, c], _44184) ? creep
   Exit: (11) as(0, [a, a, b, b, c], [a, a, b, b, c]) ? creep
   Call: (11) bs(0, [a, a, b, b, c], _45702) ? creep
   Exit: (11) bs(0, [a, a, b, b, c], [a, a, b, b, c]) ? creep
   Call: (11) cs(0, [a, a, b, b, c], []) ? creep
   Fail: (11) cs(0, [a, a, b, b, c], []) ? creep
   Redo: (11) as(_42910, [a, a, b, b, c], _44184) ? creep
   Call: (12) as(_49496, [a, b, b, c], _44184) ? creep
   Exit: (12) as(0, [a, b, b, c], [a, b, b, c]) ? creep
   Exit: (11) as(suc(0), [a, a, b, b, c], [a, b, b, c]) ? creep
   Call: (11) bs(suc(0), [a, b, b, c], _51772) ? creep
   Fail: (11) bs(suc(0), [a, b, b, c], _51772) ? creep
   Redo: (12) as(_49496, [a, b, b, c], _44184) ? creep
   Call: (13) as(_54050, [b, b, c], _44184) ? creep
   Exit: (13) as(0, [b, b, c], [b, b, c]) ? creep
   Exit: (12) as(suc(0), [a, b, b, c], [b, b, c]) ? creep
   Exit: (11) as(suc(suc(0)), [a, a, b, b, c], [b, b, c]) ? creep
   Call: (11) bs(suc(suc(0)), [b, b, c], _57084) ? creep
   Call: (12) bs(suc(0), [b, c], _57084) ? creep
   Call: (13) bs(0, [c], _57084) ? creep
   Exit: (13) bs(0, [c], [c]) ? creep
   Exit: (12) bs(suc(0), [b, c], [c]) ? creep
   Exit: (11) bs(suc(suc(0)), [b, b, c], [c]) ? creep
   Call: (11) cs(suc(suc(0)), [c], []) ? creep
   Call: (12) cs(suc(0), [], []) ? creep
   Fail: (12) cs(suc(0), [], []) ? creep
   Fail: (11) cs(suc(suc(0)), [c], []) ? creep
   Redo: (13) as(_54050, [b, b, c], _44184) ? creep
   Fail: (13) as(_54050, [b, b, c], _44184) ? creep
   Fail: (12) as(_49496, [a, b, b, c], _44184) ? creep
   Fail: (11) as(_42910, [a, a, b, b, c], _44184) ? creep
   Fail: (10) s(_42910, [a, a, b, b, c], []) ? creep
false.

Retornou falso pois tem um C a menos, logo foge da regra.


*/

