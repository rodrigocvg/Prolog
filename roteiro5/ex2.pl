/* Ex. 2 */

s(A-C):- sn(A-B), sv(B-C).
sn(A-C):- det(A-B), n(B-C).
sv(A-C):- v(A-B), sn(B-C). 
sv(A-C):- v(A-C).
det([o|P]-P).            
det([a|P]-P). 
n([homem|P]-P).     
n([mulher|P]-P).      
n([bola|P]-P). 
v([chuta|P]-P).

/* Realizando alguns rastreamentos com trace]

[trace]  ?- s([a,mulher,chuta,o,homem]-[]).
   Call: (10) s([a, mulher, chuta, o, homem]-[]) ? creep
   Call: (11) sn([a, mulher, chuta, o, homem]-_24256) ? creep
   Call: (12) det([a, mulher, chuta, o, homem]-_25012) ? creep
   Exit: (12) det([a, mulher, chuta, o, homem]-[mulher, chuta, o, homem]) ? creep
   Call: (12) n([mulher, chuta, o, homem]-_24256) ? creep
   Exit: (12) n([mulher, chuta, o, homem]-[chuta, o, homem]) ? creep
   Exit: (11) sn([a, mulher, chuta, o, homem]-[chuta, o, homem]) ? creep
   Call: (11) sv([chuta, o, homem]-[]) ? creep
   Call: (12) v([chuta, o, homem]-_29530) ? creep
   Exit: (12) v([chuta, o, homem]-[o, homem]) ? creep
   Call: (12) sn([o, homem]-[]) ? creep
   Call: (13) det([o, homem]-_31792) ? creep
   Exit: (13) det([o, homem]-[homem]) ? creep
   Call: (13) n([homem]-[]) ? creep
   Exit: (13) n([homem]-[]) ? creep
   Exit: (12) sn([o, homem]-[]) ? creep
   Exit: (11) sv([chuta, o, homem]-[]) ? creep
   Exit: (10) s([a, mulher, chuta, o, homem]-[]) ? creep
true .

Essa versão ficou bem mais eficiente e com bem menos consultas para chegar ao resultado
*/ 