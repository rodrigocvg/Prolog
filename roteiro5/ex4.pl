/* Ex. 4 */

s --> sn, sv.
sn --> det, n.
sv --> v, sn.
sv --> v.
det --> [o].              
det --> [a].
n--> [homem].       
n--> [mulher].      
n --> [bola].
v--> [chuta].

/* Realizando rastreamento com trace 

[trace]  ?- s([a,mulher,chuta,o,homem],[]).
   Call: (10) s([a, mulher, chuta, o, homem], []) ? creep
   Call: (11) sn([a, mulher, chuta, o, homem], _20242) ? creep
   Call: (12) det([a, mulher, chuta, o, homem], _20998) ? creep
   Exit: (12) det([a, mulher, chuta, o, homem], [mulher, chuta, o, homem]) ? creep
   Call: (12) n([mulher, chuta, o, homem], _20242) ? creep
   Exit: (12) n([mulher, chuta, o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sn([a, mulher, chuta, o, homem], [chuta, o, homem]) ? creep
   Call: (11) sv([chuta, o, homem], []) ? creep
   Call: (12) v([chuta, o, homem], _25524) ? creep
   Exit: (12) v([chuta, o, homem], [o, homem]) ? creep
   Call: (12) sn([o, homem], []) ? creep
   Call: (13) det([o, homem], _27788) ? creep
   Exit: (13) det([o, homem], [homem]) ? creep
   Call: (13) n([homem], []) ? creep
   Exit: (13) n([homem], []) ? creep
   Exit: (12) sn([o, homem], []) ? creep
   Exit: (11) sv([chuta, o, homem], []) ? creep
   Exit: (10) s([a, mulher, chuta, o, homem], []) ? creep
true .

As consultas também ocorrem com mais eficiência, como na lista de diferença.


*/