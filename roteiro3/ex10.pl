/* Rodrigo Castro Vieira Gomes*/
/* Ex. 10 */


junta([ ], Y, Y).
junta([X|A], B, [X|C]) :- junta(A, B, C).

/* Predicado inverte que inverte uma lista */ 

inverte([],[]).
inverte([X|Y],Z):- inverte(Y,L), junta(L,[X],Z).

/* Predicado palíndromo(Lista) que verifica se
Lista é um palíndromo */ 

palindromo(Lista):- inverte(Lista,Lista).

/* 
1.Socorram-me, subi no onibus em Marrocos

?- palindromo([s,o,c,o,r,r,a,m,-,m,e,s,u,b,i,n,o,o,n,i,b,u,s,e,m,m,a,r,r,o,c,o,s]).
false.

2. Anotaram a data da maratona

?- palindromo([a,n,o,t,a,r,a,m,a,d,a,t,a,d,a,m,a,r,a,t,o,n,a]).
true.

3. A droga da gorda

?- palindromo([a,d,r,o,g,a,d,a,g,o,r,d,a]).
true.

4. A mala nada na lama

?- palindromo([a,m,a,l,a,n,a,d,a,n,a,l,a,m,a]).
true.

5. A torre da derrota

?- palindromo([a,t,o,r,r,e,d,a,d,e,r,r,o,t,a]).
true.

*/