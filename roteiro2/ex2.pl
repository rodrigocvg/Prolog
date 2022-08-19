/* Rodrigo Castro Vieira Gomes*/
/* Ex. 2 */

/* a) */
proximo_posto(soldado,taifeiro).
proximo_posto(taifeiro,terceirosargento).
proximo_posto(terceirosargento,segundosargento).
proximo_posto(segundosargento,primeirosargento).
proximo_posto(primeirosargento,subtenente).
proximo_posto(subtenente,aspirante).
proximo_posto(aspirante,segundotenente).
proximo_posto(segundotenente,primeirotenente).
proximo_posto(primeirotenente,capitao).
proximo_posto(capitao,major).
proximo_posto(major,tenentecoronel).
proximo_posto(tenentecoronel,coronel).
proximo_posto(coronel,generaldebrigada).
proximo_posto(generaldebrigada,generaldedivisao).
proximo_posto(generaldedivisao,generaldeexercito).
proximo_posto(generaldeexercito,marechal).

/* b) */

militar(zero,soldado).
militar(platao,soldado).
militar(dentinho,soldado).
militar(cosme,soldado).
militar(roque,soldado).
militar(quindim,soldado).
militar(blips,soldado).
militar(ky,cabo).
militar(cuca,primeirosargento).
militar(tainha,primeirosargento).
militar(louiselorota,primeirosargento).
militar(escovinha,primeirotenente).
militar(mironga,primeirotenente).
militar(durindana,capitao).
militar(peroba,major).
militar(amosdureza,generaldeexercito).

/* c) 
Predicado menor_patente/2
que é verdadeiro se a patente no primero argumento é menor do
que aquela no segundo argumento. */ 

menor_patente(A,B):- proximo_posto(A,B).
menor_patente(A,B):- proximo_posto(A,C),menor_patente(C,B).

/* d) 
Predicado maior_patente/2 que é verdadeiro se a patente no primero argumento é maior do
que aquela no segundo argumento. */

maior_patente(A,B):- menor_patente(B,A).

/* e) 
Predicado subordinado/2 que recebe dois nomes de militares e é verdadeiro sempre que a patente associada ao primeiro
nome é inferior àquela associada ao segundo nome. */

subordinado(A,B):- militar(A,X),militar(B,Y),maior_patente(Y,X).

/* f) 
- O recruta Zero está subordinado ao sargento Tainha?

?- subordinado(zero,tainha).
true ;

*/

/* g) 
- Quais são os nomes dos militares que são superiores ao tentente Mironga?

?- subordinado(mironga,X).
X = durindana ;
X = peroba ;
X = amosdureza ;

*/

