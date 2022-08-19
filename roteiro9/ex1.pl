:- dynamic palavra/2.

histograma(Arq):-
	open(Arq,read,Fluxo),
	ler(Fluxo),
	close(Fluxo).

ler(Fluxo):- at_end_of_stream(Fluxo),!.
ler(Fluxo):- 
	leia_palavra(Fluxo,X),
	palavra(X,Z),
	Y is Z+1,
	asserta(palavra(X,Y):-!),
	ler(Fluxo),!.

ler(Fluxo):-
	leia_palavra(Fluxo,X),
	asserta(palavra(X,1):-!),
	ler(Fluxo),!.

leia_palavra(Fluxo,Palavra):-
	get_code(Fluxo,Caracter),
	verifica(Caracter,Caracteres,Fluxo),
	atom_codes(Palavra,Caracteres),!.

verifica(10,[],_):-!.
verifica(32,[],_):-!.
verifica(-1,[],_):-!.
verifica(Caracter,[Caracter|Caracteres],F):-
	get_code(F,Prox),
	verifica(Prox,Caracteres,F).

palavra(a,2).

palavra(acrescimo,1).

palavra(cada,2).

palavra(tinha,3).

palavra(um,4).

palavra(devotamente,1).