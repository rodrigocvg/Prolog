/* Ex. 15 */
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