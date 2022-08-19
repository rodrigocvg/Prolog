/* 

?- assert(q(a,b)), assertz(q(1,2)), asserta(q(foo,blug)).
O que estara na base de dados agora?

q(foo, blug).
q(a, b).
q(1, 2).


?- retract(q(1,2)), assertz( (p(X) :- h(X)) ).
O que estara na base de dados agora?

p(A) :-
    h(A).

q(foo, blug).
q(a, b).

?- retract(q(_,_)),fail.
O que estara na base de dados agora?

p(A) :-
    h(A).

*/