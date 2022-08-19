/* Ex. 1 */ 

s(C):- sn(A), sv(B), append(A,B,C).
sn(C):- det(A), n(B), append(A,B,C).
sv(C):- v(A), sn(B), append(A,B,C).
sv(C):- v(C).
det([o]).            
det([a]). 
n([homem]).     
n([mulher]).      
n([bola]). 
v([chuta]).


/* Realizando alguns rastreamentos com trace 

[trace]  ?- s([a,mulher,chuta,o,homem]).
   Call: (10) s([a, mulher, chuta, o, homem]) ? creep
   Call: (11) sn(_13748) ? creep
   Call: (12) det(_14500) ? creep
   Exit: (12) det([o]) ? creep
   Call: (12) n(_16008) ? creep
   Exit: (12) n([homem]) ? creep
   Call: (12) lists:append([o], [homem], _13748) ? creep
   Exit: (12) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (11) sn([o, homem]) ? creep
   Call: (11) sv(_19812) ? creep
   Call: (12) v(_20564) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_22072) ? creep
   Call: (13) det(_22824) ? creep
   Exit: (13) det([o]) ? creep
   Call: (13) n(_24332) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _22072) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _19812) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? 
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_130) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([o], [mulher], _120) ? creep
   Exit: (13) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (12) sn([o, mulher]) ? creep
   Call: (12) lists:append([chuta], [o, mulher], _110) ? creep
   Exit: (12) lists:append([chuta], [o, mulher], [chuta, o, mulher]) ? creep
   Exit: (11) sv([chuta, o, mulher]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? 
   Redo: (13) n(_130) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([o], [bola], _120) ? creep
   Exit: (13) lists:append([o], [bola], [o, bola]) ? creep
   Exit: (12) sn([o, bola]) ? creep
   Call: (12) lists:append([chuta], [o, bola], _110) ? creep
   Exit: (12) lists:append([chuta], [o, bola], [chuta, o, bola]) ? creep
   Exit: (11) sv([chuta, o, bola]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) det(_122) ? creep
   Exit: (13) det([a]) ? creep
   Call: (13) n(_17450) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([a], [homem], _120) ? creep
   Exit: (13) lists:append([a], [homem], [a, homem]) ? creep
   Exit: (12) sn([a, homem]) ? creep
   Call: (12) lists:append([chuta], [a, homem], _110) ? creep
   Exit: (12) lists:append([chuta], [a, homem], [chuta, a, homem]) ? creep
   Exit: (11) sv([chuta, a, homem]) ? creep
   Call: (11) lists:append([o, homem], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? 
   Redo: (13) n(_17450) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([a], [mulher], _120) ? creep
   Exit: (13) lists:append([a], [mulher], [a, mulher]) ? creep
   Exit: (12) sn([a, mulher]) ? creep
   Call: (12) lists:append([chuta], [a, mulher], _110) ? creep
   Exit: (12) lists:append([chuta], [a, mulher], [chuta, a, mulher]) ? creep
   Exit: (11) sv([chuta, a, mulher]) ? creep
   Call: (11) lists:append([o, homem], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_130) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([a], [bola], _120) ? creep
   Exit: (13) lists:append([a], [bola], [a, bola]) ? creep
   Exit: (12) sn([a, bola]) ? creep
   Call: (12) lists:append([chuta], [a, bola], _110) ? creep
   Exit: (12) lists:append([chuta], [a, bola], [chuta, a, bola]) ? creep
   Exit: (11) sv([chuta, a, bola]) ? creep
   Call: (11) lists:append([o, homem], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (11) sv(_110) ? creep
   Call: (12) v(_110) ? creep
   Exit: (12) v([chuta]) ? creep
   Exit: (11) sv([chuta]) ? creep
   Call: (11) lists:append([o, homem], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Redo: (12) n(_96) ? creep
   Exit: (12) n([mulher]) ? creep
   Call: (12) lists:append([o], [mulher], _86) ? creep
   Exit: (12) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (11) sn([o, mulher]) ? creep
   Call: (11) sv(_17404) ? creep
   Call: (12) v(_18156) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_19664) ? creep
   Call: (13) det(_20416) ? creep
   Exit: (13) det([o]) ? creep
   Call: (13) n(_21924) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _19664) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _17404) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? 
   Redo: (13) n(_21924) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([o], [mulher], _120) ? creep
   Exit: (13) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (12) sn([o, mulher]) ? creep
   Call: (12) lists:append([chuta], [o, mulher], _110) ? creep
   Exit: (12) lists:append([chuta], [o, mulher], [chuta, o, mulher]) ? creep
   Exit: (11) sv([chuta, o, mulher]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_130) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([o], [bola], _120) ? creep
   Exit: (13) lists:append([o], [bola], [o, bola]) ? creep
   Exit: (12) sn([o, bola]) ? creep
   Call: (12) lists:append([chuta], [o, bola], _110) ? creep
   Exit: (12) lists:append([chuta], [o, bola], [chuta, o, bola]) ? creep
   Exit: (11) sv([chuta, o, bola]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) det(_122) ? creep
   Exit: (13) det([a]) ? creep
   Call: (13) n(_15070) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([a], [homem], _120) ? creep
   Exit: (13) lists:append([a], [homem], [a, homem]) ? creep
   Exit: (12) sn([a, homem]) ? creep
   Call: (12) lists:append([chuta], [a, homem], _110) ? creep
   Exit: (12) lists:append([chuta], [a, homem], [chuta, a, homem]) ? creep
   Exit: (11) sv([chuta, a, homem]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_15070) ? 
   

   ... (Ainda há mais)


   Como visto, essa versão não é tão eficiente, pois utiliza muitas buscas para chegar a resposta.

*/ 
