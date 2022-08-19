copia_arq(Ori,Cpy) :-
	open(Ori,read,Fo),
	open(Cpy,write,Fc),
	cpyC(Fo,Fc),
	close(Fo),
	close(Fc).

cpyC(Fo,_) :- at_end_of_stream(Fo),!.
cpyC(Fo,Fc) :-
	get_code(Fo,X),
	atom_codes(Y,[X]),
	write(Fc,Y),
	cpyC(Fo,Fc).