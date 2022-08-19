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

subformula(X,G):- formula(X), formula(G).

interpretacao(true,t):- !.
interpretacao(false,f):- !.


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
    
contraditoria(X):- interpretacao(X,f).


contraditoria(p & ~ p).
