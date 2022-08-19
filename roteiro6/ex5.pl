/* Ex. 5 */
html(T) --> corpo(T).
corpo(T) --> [<, !, 'DOCTYPE', html, >,
<, html, lang, =, 'pt-BR', >,
<, head, >,
<, meta, charset, =, 'UTF-8', >,
<, title, >], texto(T), [<, /, title, >,
<, /, head, >,
<, body, >,
<, /, body, >,
<, /, html, >].

texto([]) --> [].
texto([P|Resto]) --> [P], texto(Resto).


teste([
<, !, 'DOCTYPE', html, >,
<, html, lang, =, 'pt-BR', >,
<, head, >,
<, meta, charset, =, 'UTF-8', >,
<, title, >, 'Titulo', da, 'Pagina', 'Basica', <, /, title, >,
<, /, head, >,
<, body, >,
<, /, body, >,
<, /, html, >
]).

/* 
?- teste(Pagina), phrase(html(Tıtulo), Pagina).
Pagina = [<, !, 'DOCTYPE', html, >, <, html, lang, =|...],
Titulo = ['Titulo', da, 'Pagina', 'Basica'] ;

*/




