identicos(Arq1,Arq2) :-
	open(Arq1,read,A1),
	open(Arq2,read,A2),
	compara(A1,A2),
	close(A1),
	close(A2).


compara(A1,_) :- at_end_of_stream(A1),fail,!.
compara(_,A2) :- at_end_of_stream(A2),fail,!.
compara(A1,A2) :- 
	at_end_of_stream(A1),
	at_end_of_stream(A2),!.
compara(A1,A2) :-
	get_code(A1,X),
	get_code(A2,Y),
	X =:= Y,
	compara(A1,A2).