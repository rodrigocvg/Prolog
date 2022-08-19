menu:-
    repeat,
    write('1 - Opcao A.'), nl,
    write('2 - Opcao B.'), nl,
    write('3 - Sair.'), nl, nl ,
    write('Digite a opcao: '),
    read(Opcao),
    processa(Opcao),
    Opcao=3.

processa(1):- !, write('Opcao A'), nl, nl.
processa(2):- !, write('Opcao B'), nl, nl.
processa(3).


for(X,[X,Z]):- X=<Z.
for(X,[Y,Z]):- 
    W is Y+1,
    W=<Z,
    for(X,[W,Z]).

ifThenElse(T,E,_S):- T, !,E.
ifThenElse(_T,_E,S):- S.

maior(X,Y,Z):-
    ifThenElse(X>Y,Z=X,Z=Y).

:-op(970,xfx,<=>).      % bi-implicacao
:-op(960,xfy,=>).       % implicacao
:-op(950,xfy,v).        % ou
:-op(940,xfy,&).        % e
:-op(930,fy,~).         % nao

formula(true).
formula(false).

formula(S):- atom(S).

formula(~H):- formula(H).

formula(H v G):-
    formula(H),
    formula(G).

formula(H & G):-
    formula(H),
    formula(G).

formula(H => G):-
    formula(H),
    formula(G).

formula(H <=> G):-
    formula(H),
    formula(G).

fexemplo(1, (p v r) => true ).
fexemplo(2, (((p v r)  => true)<=>(q&s))).
fexemplo(3, (p v r) => true <=> q & s).
fexemplo(4,  ((p v r)  => true)<=>(q&s)).
fexemplo(5,((~x) v ((~(x v y)) v z))).

comp(true ,1).
comp(false,1).
comp(S,1):-atom(S).

comp(~H,C):-comp(H,Ch),C is Ch+ 1.

comp(H v G,C):-
    comp(H,Ch),
    comp(G,Cg),
    C is Ch + Cg+ 1.

comp(H & G,C):-
    comp(H,Ch),
    comp(G,Cg),
    C is Ch + Cg + 1.

comp(H => G,C):-
    comp(H,Ch),
    comp(G,Cg),
    C is Ch + Cg +1.

comp(H <=> G,C):-
    comp(H,Ch),
    comp(G,Cg),
    C is Ch + Cg +1.


/* ---------------------------AULA 13--------------------------- */
interpretacao(true,t):- !.
interpretacao(false,f):- !.

interpretacao(P,I):-
    atom(P),
    pergunta(P,R), !,
    R = I.

interpretacao(~H,t):-
    interpretacao(H,f), !.
interpretacao(~H,f):-
    interpretacao(H,t), !.

interpretacao(H v G,t):-
    interpretacao(H,t),
    interpretacao(G,t), !.
interpretacao(H v G,t):-
    interpretacao(H,t), !.
interpretacao(H v G,t):-
    interpretacao(G,t), !.
interpretacao(H v G, f):-
    interpretacao(H,f),
    interpretacao(G,f), !. 

interpretacao(H & G,t):-
    interpretacao(H,t),
    interpretacao(G,t),
    !.
interpretacao(H & G, f):-
    interpretacao(H,f),
    interpretacao(G,f),
    !.
interpretacao(H & G, f):-
    interpretacao(H,f),
    !.
interpretacao(H & G, f):-
    interpretacao(G,f),
    !.

interpretacao(H => G,t):-
    interpretacao(H,f),
    interpretacao(G,t),
    !.
interpretacao(H => G,t):-
    interpretacao(H,f),
    !.
interpretacao(H => G,t):-
    interpretacao(G,t),
    !.
interpretacao(H => G, f):-
    interpretacao(H,t),
    interpretacao(G,f),
    !.
interpretacao(H <=> G, t):-
    interpretacao(H,I),
    interpretacao(G,I),
    !.
interpretacao(H <=> G, f):-
    interpretacao(H,Ih),
    interpretacao(G,Ig),
    Ih \= Ig.

interpreta(F,I):-
    retractall(resposta(_,_)),
    interpretacao(F,I).




:- dynamic resposta/2.

pergunta(P,I):- resposta(P,I), !.
pergunta(P,I):-
    repeat,
    write('Digite a interpretacao para '), write(P), write(':'),
    read(I),
    (I = t; I = f),
    assert(resposta(P,I)).



~H:- not(H).

H v _:- H, !.
    _ v G:- G.
    H & G:- H, G.

H => G:- not(H) v G.

H <=> G:-
    H => G,
    G => H.


tabela(X,Y,F):-
    valor_verdade(X),
    valor_verdade(Y),
    tv(X,Y,F),
    fail.

tabela(_,_,_).

valor_verdade(true).
valor_verdade(false).

tv(X,Y,F):-
    write (X), write(' '), write(Y), write(' '),
    avalia(F),
    nl.

avalia(F):- F, !, write (true ).
avalia(_):- write(false).


tabela(ListaVars,F):- valores_verdade(ListaVars), tv(ListaVars,F), fail.

tabela(_,_).

valores_verdade([]).
valores_verdade([V|Vs]):-
    valor_verdade(V),
    valores_verdade(Vs).

tv(ListaVars,F):-
    escreve_variaveis(ListaVars),
    avalia(F),
    nl.

escreve_variaveis([]).
escreve_variaveis([V|Vs]):-
    write(V), write(' '),
    escreve_variaveis(Vs).
