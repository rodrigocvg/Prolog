
/* s(C):- sn(A), sv(B), append(A,B,C).
sn(C):- det(A), n(B), append(A,B,C).
sv(C):- v(A), sn(B), append(A,B,C).
sv(C):- v(C).
det([o]).            
det([a]). 
n([homem]).     
n([mulher]).      
n([bola]). 
v([chuta]).
*/

/* s(A-C):- sn(A-B), sv(B-C).
sn(A-C):- det(A-B), n(B-C).
sv(A-C):- v(A-B), sn(B-C). 
sv(A-C):- v(A-C).
det([o|P]-P).            
det([a|P]-P). 
n([homem|P]-P).     
n([mulher|P]-P).      
n([bola|P]-P). 
v([chuta|P]-P).
*/

/*

DCG

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
*/


/* 

DCG COM RECURSÃO INFINITA 

s --> s, conj, s.           
s --> sn, sv.
sn --> det, n.
sv--> v, sn.
sv--> v.det --> [o].         
det --> [a].
n--> [homem].                  
n--> [mulher].         
n --> [bola].   
v--> [chuta].
conj --> [e].
conj --> [ou].
conj --> [mas]. 
*/

/* DCG SEM RECURSÃO INFINITA */ 
s --> s_simples.
s --> s_simples, conj, s.    
s_simples --> sn, sv.
sn --> det, n.              
sv --> v, sn.             
sv --> v.
det --> [o].                 
det --> [a].
n--> [homem].          
n--> [mulher].         
n --> [bola].
v--> [chuta].
conj --> [e].               
conj --> [ou].            
conj --> [mas]. 

/* LINGUAGEM "A^nB^n 

s --> [].
s --> e,s,d.
e --> [a].
d --> [b].
*/

