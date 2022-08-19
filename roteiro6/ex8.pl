/* Ex. 8 */


termoaterrado(X):- not(var(X)), X =..[_|Y], termoaterradoLi(Y).
termoaterradoLi([]):- !.
termoaterradoLi([X|Y]) :- termoaterrado(X), termoaterradoLi(Y).






    
   
