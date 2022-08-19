/* copiar códigos aula 7b */


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

/* --------------------------------------------------------------- */

s(s(SN,SV)) --> sn(sujeito,SN), sv(SV).
sn(_,sn(D,N)) --> det(D), n(N).
sn(X,sn(Pro)) --> pro(X,Pro).
sv(sv(V,SN)) --> v(V), sn(objeto,SN).
sv(sv(V)) --> v(V).

det(det(o)) --> [o].
det(det(o)) --> [a].
n(n(mulher)) --> [mulher].
n(n(homem)) --> [homem].

v(v(bate))--> [bate].
pro(sujeito,pro(ele)) --> [ele].
pro(sujeito,pro(ela)) --> [ela].
pro(objeto,pro(nele)) --> [nele].
pro(objeto,pro(nela)) --> [nela].

