/* Ex. 5 */

s --> sn, sv.
sn --> det, n.
sv --> v, sn.
sv --> v.
det --> [o].              
det --> [a].
n--> [homem].       
n--> [mulher].      
n --> [bola].
v--> [chuta].


/* Utilizando listing para 

Det --> [o].

?- listing(det).
system:det(Spec) :-
    '$set_pattr'(Spec, pred, det(true)).

det([o|A], A).
det([a|A], A).

true.

?- listing(det([o|A], A)).
det([o|A], A).

true.



*/