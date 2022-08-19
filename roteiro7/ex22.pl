
unificavel([X|Y],Termo,Lista):- \+ X = Termo,!,unificavel(Y,Termo,Lista).
unificavel([X|Y],Termo,[X|Lista]):- unificavel(Y,Termo,Lista).
unificavel([],_,[]).
