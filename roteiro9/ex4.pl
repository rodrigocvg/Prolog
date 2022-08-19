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





