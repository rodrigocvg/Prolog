/* Rodrigo Castro Vieira Gomes*/
/* Ex. 1 */

/* a) */
sobre(cupcake,hipopotamo2).
sobre(hipopotamo2,hipopotamo1).
sobre(hipopotamo1,maca).
sobre(maca,sorvete).
sobre(sorvete,novelo).
sobre(novelo,elefante).
sobre(elefante,base).
sobre(base,mesa).
sobre(caneca,mesa).
sobre(lapis,vidro).
sobre(vidro,mesa).

/* b) */
acima_de(A,B):-sobre(A,B).
acima_de(A,B):- sobre(A,C),acima_de(C,B).

/* c) 
- O cupcake está acima da mesa?

?- acima_de(cupcake,mesa).
true 

*/

/* d)
- Os lápis estão acima da mesa?

?- acima_de(lapis,mesa).
true 

*/

/* e)
- Quais objetos estão acima do novelo?

?- acima_de(X,novelo).
X = sorvete ;
X = cupcake ;
X = hipopotamo2 ;
X = hipopotamo1 ;
X = maca ;
false.

*/

/* f)
- Quais objetos estão acima da caneca?

?- acima_de(X,caneca).
false.

*/

/* g) */

abaixo_de(A,B):-acima_de(B,A).

/* h)
- Quais objetos estão abaixo do cupcake?

?- abaixo_de(X,cupcake).
X = hipopotamo2 ;
X = hipopotamo1 ;
X = maca ;
X = sorvete ;
X = novelo ;
X = elefante ;
X = base ;
X = mesa ;
false.

*/

/* i)
- Quais objetos estão abaixo dos lápis?

?- abaixo_de(X,lapis).
X = vidro ;
X = mesa ;
false.

*/