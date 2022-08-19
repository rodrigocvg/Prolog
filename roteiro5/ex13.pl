/* Ex. 13 */


s --> sn(Num), sv(Num).
sn(Num) --> det(Genero,Num), n(Genero,Num).

sv(Num) --> v(Num), sn(_).
sv(Num) --> v(Num).


det(masc,sing) --> [o].
det(fem,sing) --> [a].
det(masc,plur) --> [os].
det(fem,plur) --> [as].


n(fem,sing) --> [mulher].
n(masc,sing) --> [homem].
n(fem,plur) --> [mulheres].
n(masc,plur) --> [homens].


v(sing) --> [bate].
v(plur) --> [batem].