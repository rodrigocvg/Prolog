/* Ex. 18 */ 

/* Quais das seguintes consultas tem sucesso e quais falham? 

?- 12 is 2*6.
true.

?- 14 =\= 2*6.
true.

?- 14 = 2*7.
false.                  Pois o prolog com o caracter '=', tenta unificar e não dar sinal de igualdade.

?- 14 == 2*7.
false.

?- 14 \== 2*7.
true.

?- 14 =:= 2*7.
true.

?- [1,2,3|[d,e]] == [1,2,3,d,e].
true.

?- 2+3 == 3+2.
false.

?- 2+3 =:= 3+2.
true.

?- 7-2 =\= 9-2.
true.

?- p == 'p'.
true.

?- p =\= 'p'.
ERROR: Arithmetic: `p/0' is not a function
ERROR: In:
ERROR:   [10] p=\=p
ERROR:    [9] toplevel_call(user:user: ...) at c:/program. files/swipl/boot/toplevel.pl:1117 

?- vicente == VAR.
false.

?- vicente=VAR, VAR==vicente.
VAR = vicente. 



*/
