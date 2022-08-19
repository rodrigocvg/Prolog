/* Ex. 10 */
s --> sn(sujeito,Num), sv(Num).
sn(_,Num) --> det(Gênero,Num), n(Gênero,Num).
sn(X,Num) --> pro(X,_,Num).

sv(Num) --> v(Num,td), sn(objeto,_).
sv(Num) --> v(Num,ti(Prep)), [Prep], sn(objeto,_).
sv(Num) --> v(Num,i).

/* Dicionário */
det(masc,sing) --> [o].
det(fem,sing) --> [a].
det(masc,plur) --> [os].
det(fem,plur) --> [as].

n(fem,sing) --> [mulher].
n(masc,sing) --> [homem].
n(fem,plur) --> [mulheres].
n(masc,plur) --> [homens].

v(sing,ti(em)) --> [bate].
v(plur,ti(em)) --> [batem].
v(sing,ti(de)) --> [precisa].
v(plur,ti(de)) --> [precisam].

v(sing,td) --> [cria].
v(plur,td) --> [criam].

v(sing,i) --> [corre].
v(plur,i) --> [correm].

pro(sujeito,masc,sing) --> [ele].
pro(sujeito,fem,sing) --> [ela].
pro(objeto,masc,sing) --> [nele].
pro(objeto,fem,sing) --> [nela].

pro(sujeito,masc,plur) --> [eles].
pro(sujeito,fem,plur) --> [elas].
pro(objeto,masc,plur) --> [neles].

/*         

Realizando alguns rastreamentos com trace.

[trace]  ?- s(S,[]).
   Call: (10) s(_9806, []) ? creep
   Call: (11) sn(sujeito, _10994, _9806, _10996) ? creep
   Call: (12) det(_11760, _10994, _9806, _11762) ? creep
   Exit: (12) det(masc, sing, [o|_11762], _11762) ? creep
   Call: (12) n(masc, sing, _11762, _10996) ? creep
   Exit: (12) n(masc, sing, [homem|_10996], _10996) ? creep
   Exit: (11) sn(sujeito, sing, [o, homem|_10996], _10996) ? creep
   Call: (11) sv(sing, _10996, []) ? creep
   Call: (12) v(sing, td, _10996, _16344) ? creep
   Exit: (12) v(sing, td, [cria|_16344], _16344) ? creep
   Call: (12) sn(objeto, _17934, _16344, []) ? creep
   Call: (13) det(_18638, _18640, _16344, _18642) ? creep
   Exit: (13) det(masc, sing, [o|_18642], _18642) ? creep
   Call: (13) n(masc, sing, _18642, []) ? creep
   Exit: (13) n(masc, sing, [homem], []) ? creep
   Exit: (12) sn(objeto, sing, [o, homem], []) ? creep
   Exit: (11) sv(sing, [cria, o, homem], []) ? creep
   Exit: (10) s([o, homem, cria, o, homem], []) ? creep
S = [o, homem, cria, o, homem] .

[trace]  ?- s(S,[o,homem,cria,o,homem]).
   Call: (10) s(_26104, [o, homem, cria, o, homem]) ? creep
   Call: (11) sn(sujeito, _27368, _26104, _27370) ? creep
   Call: (12) det(_28134, _27368, _26104, _28136) ? creep
   Exit: (12) det(masc, sing, [o|_28136], _28136) ? creep
   Call: (12) n(masc, sing, _28136, _27370) ? creep
   Exit: (12) n(masc, sing, [homem|_27370], _27370) ? creep
   Exit: (11) sn(sujeito, sing, [o, homem|_27370], _27370) ? creep
   Call: (11) sv(sing, _27370, [o, homem, cria, o, homem]) ? creep
   Call: (12) v(sing, td, _27370, _32718) ? creep
   Exit: (12) v(sing, td, [cria|_32718], _32718) ? creep
   Call: (12) sn(objeto, _34308, _32718, [o, homem, cria, o, homem]) ? creep
   Call: (13) det(_35012, _35014, _32718, _35016) ? creep
   Exit: (13) det(masc, sing, [o|_35016], _35016) ? creep
   Call: (13) n(masc, sing, _35016, [o, homem, cria, o, homem]) ? creep
   Exit: (13) n(masc, sing, [homem, o, homem, cria, o, homem], [o, homem, cria, o, homem]) ? creep
   Exit: (12) sn(objeto, sing, [o, homem, o, homem, cria, o, homem], [o, homem, cria, o, homem]) ? creep
   Exit: (11) sv(sing, [cria, o, homem, o, homem, cria, o, homem], [o, homem, cria, o, homem]) ? creep
   Exit: (10) s([o, homem, cria, o, homem, o, homem, cria|...], [o, homem, cria, o, homem]) ? creep
S = [o, homem, cria, o, homem, o, homem, cria, o|...] .

*/
