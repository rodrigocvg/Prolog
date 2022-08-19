:- op(300, xfx, [sao, e_um]).
:- op(300, fx, gosta_de).
:- op(200, xfy, e).
:- op(100, fy, famoso).


/*
?- X e_um bruxo.
                correto OperadorPrincipal = e_um

?- harry e ron e hermione sao amigos.
                correto OperadorPrincipal = sao

?- harry e_um mago e gosta_de quadribol.
                errado OperadorPrincipal = e_um
                correto = (harry e_um mago) e gosta_de quadribol.

?- dumbledore e_um famoso famoso mago.
                correto OperadorPrincipal = e_um

*/












