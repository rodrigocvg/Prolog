membro(X,[X|_]).
membro(X[_,T]):- mebro(X,T).

a2b([], []).
a2b([a|Lista1],[b|Lista2]):- 
    a2b(Lista1,Lista2).
