








nesimo(1,[X|_],X).
nesimo(N,[_|Y],Elem):- N>0, M is N-1, nesimo(M,Y,Elem).

ultimo(X,[X]).
ultimo(X,[_|L]):- ultimo(X,L).

somatorio([X],X).
somatorio([X|Y],Res):-somatorio(Y,Aux),Res is X + Aux. 

somatorio2([X],Acum,Soma):-
    Soma is Acum + X.
somatorio2([X|Y], Acum, Soma):- 
    NovoAcum is Acum + X, 
    somatorio2(Y,NovoAcum,Soma).
somatorio2(L,Soma):-
     somatorio2(L,0,Soma).

ocorrencias(_X,[],0).
ocorrencias(X,[X|T],N):-
    ocorrencias(X,T,N1),
    N is N1 + 1.
ocorrencias(X,[_|T],N):-
    ocorrencias(X,T,N).


ocorrencias2(_X,[],Acum,Acum).
ocorrencias2(X,[X|T],Acum,N):-
    NovoAcum is Acum + 1,
    ocorrencias2(X,T,NovoAcum,N).
ocorrencias2(X,[_|T],Acum,N):-
    ocorrencias2(X,T,Acum,N).
ocorrencias2(X,Lista,N):-
    ocorrencias2(X,Lista,0,N).

removeTodos([],_X,[]).
removeTodos([X|T],X,L):-
    removeTodos(T,X,L).
removeTodos([Y|T],X,[Y|L]):-
    removeTodos(T,X,L).



produto(0,_B,0).
produto(_A,0,0).
produto(A,B,P):-
    A>=0,
    B>=0,
    A1 is A-1,
    produto(A1,B,P1),
    P is B + P1.

pot(_B,0,1).
pot(B,N,P):-
    N>=0,
    N1 is N-1,
    pot(B,N1,P1),
    P is B * P1.

seleciona([],_,_,[]).
seleciona(_,[],_,[]).
seleciona([X|L],[PosAtual|P],PosAtual,[X|Res]):- 
    NovaPosAtual is PosAtual + 1,
    seleciona(L,P,NovaPosAtual,Res).

seleciona([_|L],P,PosAtual,Res):-
    NovaPosAtual is PosAtual + 1,
    seleciona(L,P,NovaPosAtual,Res).

seleciona(L,P,Res):-
    seleciona(L,P,1,Res).
