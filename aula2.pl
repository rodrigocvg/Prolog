ama(maria,vicente).
ama(marcelo,maria).
pai(marcelo).

not(0,1).
not(1,0).

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

nand(A,B,D):-
    and(A,B,C),
    not(C,D).

nor(A,B,D):-
    or(A,B,C),
    not(C,D).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

xnor(A,B,C):-
    xor(A,B,D),
    not(D,C).