:- dynamic somatorio/2.

somatorio(0,0).
somatorio(N,S):- Aux is N - 1, somatorio(Aux,S1), S is S1 + N, assert(somatorio(N,S)),!.

