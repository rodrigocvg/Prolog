/* Ex. 7 */


termo1(X):-
    nonvar(X),
    functor(X,_,_).

termosimples(X):-
    nonvar(X),
    functor(X,_,A),
    A=0.

termocomplexo(X):- 
        nonvar(X),
        functor(X,_,A),
        A>0.


tipotermo(X,Y):- 
        atom(X), Y = atomo.



tipotermo(X,Y):- 
        atomic(X), Y = constante.

tipotermo(X,Y):- 
        var(X), Y = variavel.

tipotermo(X,Y):- 
        number(X), Y = numero.





tipotermo(X,Y):- 
        termosimples(X), Y = termo_simples.

tipotermo(X,Y):- 
        termocomplexo(X), Y = termo_complexo.

tipotermo(X,Y):- 
        termo1(X), Y = termo.
        




