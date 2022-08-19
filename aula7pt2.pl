html5(T) --> corpo(T).

corpo(T) --> [<,body,>],elementos(T),[<,/,body,>].

elementos(T) --> paragrafo(T).

paragrafo(T) --> [<,p,>], texto(T), [<,/,p,>].

texto([]) --> [].
texto([P|Resto])--> [P],texto(Resto).



s(Conta) --> as(Conta), bs(Conta), cs(Conta). 

as(0) --> [].
as(NovoCnt) --> [a], as(Cnt), {NovoCnt is Cnt + 1}.

bs(0) --> [].
bs(NovoCnt) --> [b], bs(Cnt), {NovoCnt is Cnt + 1}.

cs(0) --> [].
cs(NovoCnt) --> [c], cs(Cnt), {NovoCnt is Cnt + 1}.


/* GRAMÁTICA MODULAR */
s --> sn, sv.
sn --> det, n.
sv --> v, sn.
sv --> v.
det --> [Palavra], {lex(Palavra,det)}.
n --> [Palavra], {lex(Palavra,n)}.
v --> [Palavra], {lex(Palavra,v)}.
lex(o, det). 
lex(a, det).
lex(mulher,  n). 
lex(homem, n).
lex(bate, v).