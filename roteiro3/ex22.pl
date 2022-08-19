/* Rodrigo Castro Vieira Gomes*/
/* Ex. 22 */

/*  Predicado combinação(P,L,C) que é verdadeiro se C é uma
combinação simples de elementos da lista L tomados P a P. */

combinacao(0,_,[]).
combinacao(N,[X|Y],[X|Y1]):- 
            N>0,
            N1 is N - 1,
            combinacao(N1,Y,Y1).
combinacao(N,[_|Y], Y1):-
             N>0,
            combinacao(N,Y,Y1).

/* (a) Uma escola possui 10 alunos atletas a1, a2, . . . , a10. Quais as diferentes equipes que podem
ser formadas com 5 alunos?


?- combinacao(5,[a1,a2,a3,a4,a5,a6,a7,a8,a9,a10],X).
X = [a1, a2, a3, a4, a5] ;
X = [a1, a2, a3, a4, a6] ;
X = [a1, a2, a3, a4, a7] ;
X = [a1, a2, a3, a4, a8] ;
X = [a1, a2, a3, a4, a9] ;
X = [a1, a2, a3, a4, a10] ;
X = [a1, a2, a3, a5, a6] ;
X = [a1, a2, a3, a5, a7] ;
X = [a1, a2, a3, a5, a8] ;
X = [a1, a2, a3, a5, a9] ;
X = [a1, a2, a3, a5, a10] ;
X = [a1, a2, a3, a6, a7] ;
X = [a1, a2, a3, a6, a8] ;
X = [a1, a2, a3, a6, a9] ;
X = [a1, a2, a3, a6, a10] ;
X = [a1, a2, a3, a7, a8] ;
X = [a1, a2, a3, a7, a9] ;
X = [a1, a2, a3, a7, a10] ;
X = [a1, a2, a3, a8, a9] ;
X = [a1, a2, a3, a8, a10] ;
X = [a1, a2, a3, a9, a10] ;
X = [a1, a2, a4, a5, a6] ;
X = [a1, a2, a4, a5, a7] ;
X = [a1, a2, a4, a5, a8] ;
X = [a1, a2, a4, a5, a9] ;
X = [a1, a2, a4, a5, a10] ;
X = [a1, a2, a4, a6, a7] ;
X = [a1, a2, a4, a6, a8] ;
X = [a1, a2, a4, a6, a9] ;
X = [a1, a2, a4, a6, a10] ;
X = [a1, a2, a4, a7, a8] ;
X = [a1, a2, a4, a7, a9] ;
X = [a1, a2, a4, a7, a10] ;
X = [a1, a2, a4, a8, a9] ;
X = [a1, a2, a4, a8, a10] ;
X = [a1, a2, a4, a9, a10] ;
X = [a1, a2, a5, a6, a7] ;
X = [a1, a2, a5, a6, a8] ;
X = [a1, a2, a5, a6, a9] ;
X = [a1, a2, a5, a6, a10] ;
X = [a1, a2, a5, a7, a8] ;
X = [a1, a2, a5, a7, a9] ;
X = [a1, a2, a5, a7, a10] ;
X = [a1, a2, a5, a8, a9] ;
X = [a1, a2, a5, a8, a10] ;
X = [a1, a2, a5, a9, a10] ;
X = [a1, a2, a6, a7, a8] ;
X = [a1, a2, a6, a7, a9] ;
X = [a1, a2, a6, a7, a10] ;
X = [a1, a2, a6, a8, a9] ;
X = [a1, a2, a6, a8, a10] ;
X = [a1, a2, a6, a9, a10] ;
X = [a1, a2, a7, a8, a9] ;
X = [a1, a2, a7, a8, a10] ;
X = [a1, a2, a7, a9, a10] ;
X = [a1, a2, a8, a9, a10] ;
X = [a1, a3, a4, a5, a6] 
X = [a1, a3, a4, a5, a7] ;
X = [a1, a3, a4, a5, a8] ;
X = [a1, a3, a4, a5, a9] ;
X = [a1, a3, a4, a5, a10] ;
X = [a1, a3, a4, a6, a7] ;
X = [a1, a3, a4, a6, a8] ;
X = [a1, a3, a4, a6, a9] ;
X = [a1, a3, a4, a6, a10] ;
X = [a1, a3, a4, a7, a8] ;
X = [a1, a3, a4, a7, a9] ;
X = [a1, a3, a4, a7, a10] ;
X = [a1, a3, a4, a8, a9] ;
X = [a1, a3, a4, a8, a10] ;
X = [a1, a3, a4, a9, a10] ;
X = [a1, a3, a5, a6, a7] ;
X = [a1, a3, a5, a6, a8] ;
X = [a1, a3, a5, a6, a9] ;
X = [a1, a3, a5, a6, a10] ;
X = [a1, a3, a5, a7, a8] ;
X = [a1, a3, a5, a7, a9] ;
X = [a1, a3, a5, a7, a10] ;
X = [a1, a3, a5, a8, a9] ;
X = [a1, a3, a5, a8, a10] ;
X = [a1, a3, a5, a9, a10] ;
X = [a1, a3, a6, a7, a8] ;
X = [a1, a3, a6, a7, a9] ;
X = [a1, a3, a6, a7, a10] ;
X = [a1, a3, a6, a8, a9] ;
X = [a1, a3, a6, a8, a10] ;
X = [a1, a3, a6, a9, a10] ;
X = [a1, a3, a7, a8, a9] ;
X = [a1, a3, a7, a8, a10] 
X = [a1, a3, a7, a9, a10] ;
X = [a1, a3, a8, a9, a10] ;
X = [a1, a4, a5, a6, a7] ;
X = [a1, a4, a5, a6, a8] ;
X = [a1, a4, a5, a6, a9] ;
X = [a1, a4, a5, a6, a10] ;
X = [a1, a4, a5, a7, a8] ;
X = [a1, a4, a5, a7, a9] ;
X = [a1, a4, a5, a7, a10] ;
X = [a1, a4, a5, a8, a9] ;
X = [a1, a4, a5, a8, a10] ;
X = [a1, a4, a5, a9, a10] ;
X = [a1, a4, a6, a7, a8] ;
X = [a1, a4, a6, a7, a9] ;
X = [a1, a4, a6, a7, a10] ;
X = [a1, a4, a6, a8, a9] ;
X = [a1, a4, a6, a8, a10] ;
X = [a1, a4, a6, a9, a10] ;
X = [a1, a4, a7, a8, a9] ;
X = [a1, a4, a7, a8, a10] ;
X = [a1, a4, a7, a9, a10] ;
X = [a1, a4, a8, a9, a10] ;
X = [a1, a5, a6, a7, a8] ;
X = [a1, a5, a6, a7, a10] ;
X = [a1, a5, a6, a8, a9] ;
X = [a1, a5, a6, a8, a10] ;
X = [a1, a5, a6, a9, a10] ;
X = [a1, a5, a7, a8, a9] ;
X = [a1, a5, a7, a8, a10] ;
X = [a1, a5, a7, a9, a10] ;
X = [a1, a5, a8, a9, a10] ;
X = [a1, a6, a7, a8, a9] ;
X = [a1, a6, a7, a8, a10] ;
X = [a1, a6, a7, a9, a10] ;
X = [a1, a6, a8, a9, a10] ;
X = [a1, a7, a8, a9, a10] ;
X = [a2, a3, a4, a5, a6] ;
X = [a2, a3, a4, a5, a7] ;
X = [a2, a3, a4, a5, a8] ;
X = [a2, a3, a4, a5, a9] ;
X = [a2, a3, a4, a5, a10] ;
X = [a2, a3, a4, a6, a7] ;
X = [a2, a3, a4, a6, a8] ;
X = [a2, a3, a4, a6, a9] ;
X = [a2, a3, a4, a6, a10] ;
X = [a2, a3, a4, a7, a8] ;
X = [a2, a3, a4, a7, a9] ;
X = [a2, a3, a4, a7, a10] ;
X = [a2, a3, a4, a8, a9] ;
X = [a2, a3, a4, a8, a10] ;
X = [a2, a3, a4, a9, a10] ;
X = [a2, a3, a5, a6, a7] ;
X = [a2, a3, a5, a6, a8] ;
X = [a2, a3, a5, a6, a9] ;
X = [a2, a3, a5, a6, a10] ;
X = [a2, a3, a5, a7, a8] ;
X = [a2, a3, a5, a7, a9] ;
X = [a2, a3, a5, a7, a10] ;
X = [a2, a3, a5, a8, a9] ;
X = [a2, a3, a5, a8, a10] ;
X = [a2, a3, a5, a9, a10] ;
X = [a2, a3, a6, a7, a8] ;
X = [a2, a3, a6, a7, a9] ;
X = [a2, a3, a6, a7, a10] ;
X = [a2, a3, a6, a8, a9] ;
X = [a2, a3, a6, a8, a10] ;
X = [a2, a3, a6, a9, a10] ;
X = [a2, a3, a7, a8, a9] ;
X = [a2, a3, a7, a8, a10] ;
X = [a2, a3, a7, a9, a10] ;
X = [a2, a3, a8, a9, a10] ;
X = [a2, a4, a5, a6, a7] ;
X = [a2, a4, a5, a6, a8] ;
X = [a2, a4, a5, a6, a9] ;
X = [a2, a4, a5, a6, a10] ;
X = [a2, a4, a5, a7, a8] ;
X = [a2, a4, a5, a7, a9] ;
X = [a2, a4, a5, a7, a10] ;
X = [a2, a4, a5, a8, a9] ;
X = [a2, a4, a5, a8, a10] ;
X = [a2, a4, a5, a9, a10] ;
X = [a2, a4, a6, a7, a8] ;
X = [a2, a4, a6, a7, a9] ;
X = [a2, a4, a6, a7, a10] ;
X = [a2, a4, a6, a8, a9] ;
X = [a2, a4, a6, a8, a10] ;
X = [a2, a4, a6, a9, a10] ;
X = [a2, a4, a7, a8, a9] ;
X = [a2, a4, a7, a8, a10] ;
X = [a2, a4, a7, a9, a10] ;
X = [a2, a4, a8, a9, a10] ;
X = [a2, a5, a6, a7, a8] ;
X = [a2, a5, a6, a7, a9] ;
X = [a2, a5, a6, a7, a10] ;
X = [a2, a5, a6, a8, a9] ;
X = [a2, a5, a6, a8, a10] ;
X = [a2, a5, a6, a9, a10] ;
X = [a2, a5, a7, a8, a9] ;
X = [a2, a5, a7, a8, a10] ;
X = [a2, a5, a7, a9, a10] ;
X = [a2, a5, a8, a9, a10] ;
X = [a2, a6, a7, a8, a9] ;
X = [a2, a6, a7, a8, a10] ;
X = [a2, a6, a7, a9, a10] ;
X = [a2, a6, a8, a9, a10] ;
X = [a2, a7, a8, a9, a10] ;
X = [a3, a4, a5, a6, a7] ;
X = [a3, a4, a5, a6, a8] ;
X = [a3, a4, a5, a6, a9] ;
X = [a3, a4, a5, a6, a10] ;
X = [a3, a4, a5, a7, a8] ;
X = [a3, a4, a5, a7, a9] ;
X = [a3, a4, a5, a7, a10] ;
X = [a3, a4, a5, a8, a9] ;
X = [a3, a4, a5, a8, a10] ;
X = [a3, a4, a5, a9, a10] ;
X = [a3, a4, a6, a7, a8] ;
X = [a3, a4, a6, a7, a9] ;
X = [a3, a4, a6, a7, a10] ;
X = [a3, a4, a6, a8, a9] ;
X = [a3, a4, a6, a8, a10] ;
X = [a3, a4, a6, a9, a10] ;
X = [a3, a4, a7, a8, a9] ;
X = [a3, a4, a7, a8, a10] ;
X = [a3, a4, a7, a9, a10] ;
X = [a3, a4, a8, a9, a10] ;
X = [a3, a5, a6, a7, a8] ;
X = [a3, a5, a6, a7, a9] ;
X = [a3, a5, a6, a7, a10] ;
X = [a3, a5, a6, a8, a9] ;
X = [a3, a5, a6, a8, a10] ;
X = [a3, a5, a6, a9, a10] ;
X = [a3, a5, a7, a8, a9] ;
X = [a3, a5, a7, a8, a10] ;
X = [a3, a5, a7, a9, a10] ;
X = [a3, a5, a8, a9, a10] ;
X = [a3, a6, a7, a8, a9] ;
X = [a3, a6, a7, a8, a10] ;
X = [a3, a6, a7, a9, a10] ;
X = [a3, a6, a8, a9, a10] ;
X = [a3, a7, a8, a9, a10] ;
X = [a4, a5, a6, a7, a8] ;
X = [a4, a5, a6, a7, a9] ;
X = [a4, a5, a6, a7, a10] ;
X = [a4, a5, a6, a8, a9] ;
X = [a4, a5, a6, a8, a10] ;
X = [a4, a5, a6, a9, a10] ;
X = [a4, a5, a7, a8, a9] ;
X = [a4, a5, a7, a8, a10] ;
X = [a4, a5, a7, a9, a10] ;
X = [a4, a5, a8, a9, a10] ;
X = [a4, a6, a7, a8, a9] ;
X = [a4, a6, a7, a8, a10] ;
X = [a4, a6, a7, a9, a10] ;
X = [a4, a6, a8, a9, a10] ;
X = [a4, a7, a8, a9, a10] ;
X = [a5, a6, a7, a8, a9] ;
X = [a5, a6, a7, a8, a10] ;
X = [a5, a6, a7, a9, a10] ;
X = [a5, a6, a8, a9, a10] ;
X = [a5, a7, a8, a9, a10] ;
X = [a6, a7, a8, a9, a10] ;
false;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
combinacao2(X,Y,X1,Y1,Res) :- combinacao(X, Y, W), combinacao(X1, Y1, Z), append(W, Z,Res).


/*
(b) Pretende-se reformular o curso de Matemática Discreta. Para tal, será coXtituído um comitê com três professores da Faculdade de Matem´atica (de um total de nove: {m1, m2, . . . , m9})
e quatro professores da Faculdade de Computação (de um total de onze: {c1, c2, . . . , c11}).
Quais são os diferentes comitês que podem ser formados?

?- combinacao2(3,[m1,m2,m3,m4,m5,m6,m7,m8,m9],4,[c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11],X).


*/
