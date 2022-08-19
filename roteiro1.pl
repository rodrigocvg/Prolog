/* 
   ROTEIRO 1 PROLOG
   RODRIGO CASTRO VIEIRA GOMES
*/ 

/*-Ex. 1*/
/*BASE DE CONHECIMEMTO 1 */
homem(abrahamII).
homem(herbert).
homem(homer).
homem(bart).
homem(clancybouvier).
mulher(monaolsen).
mulher(abbey).
mulher(maggie).
mulher(lisa).
mulher(jacquelinegurney).
mulher(margebouvier).
mulher(selma).
mulher(patty).
mulher(ling).
pai(abrahamII,homer).
pai(abrahamII,abbey).
pai(abrahamII,herbert).
mae(monaolsen,homer).
pai(homer,maggie).
pai(homer,lisa).
pai(homer,bart).
mae(margebouvier,maggie).
mae(margebouvier,lisa).
mae(margebouvier,bart).
pai(clancybouvier,margebouvier).
pai(clancybouvier,selma).
pai(clancybouvier,patty).
mae(jacquelinegurney,margebouvier).
mae(jacquelinegurney,selma).
mae(jacquelinegurney,patty).
mae(selma,ling).

/* -Ex. 2

.Quem é o pai de Marge? 
        ?- pai(X,margebouvier).
        X = clancybouvier.
O pai de Marge é o Clancy.

.Quem é o pai de Quem?
        ?- pai(X,Quem).
        X = abrahamII,
        Quem = homer ;
        X = abrahamII,
        Quem = abbey ;
        X = abrahamII,
        Quem = herbert ;
        X = homer,
        Quem = maggie ;
        X = homer,
        Quem = lisa ;
        X = homer,
        Quem = bart ;
        X = clancybouvier,
        Quem = margebouvier ;
        X = clancybouvier,
        Quem = selma ;
        X = clancybouvier,
        Quem = patty.



.Quem é o avô de Lisa?
?- pai(Y,lisa),pai(X,Y).
        Y = homer,
        X = abrahamII.
O avô da parte de pai da Lisa é o Abraham.

?- mae(Y,lisa),pai(X,Y).
        Y = margebouvier,
        X = clancybouvier
O avô da parte de mãe da Lisa é o Clancy.
*/

/*Ex.3

.Quem são os netos de Mona Olsen?
?- mae(monaolsen,X),pai(X,Y).
        X = homer,
        Y = maggie ;
        X = homer,
        Y = lisa ;
        X = homer,
        Y = bart
Os netos de Mona Olsen são Bart, Lisa e Maggie.

.Maggie e Bart têm o mesmo pai?
?- pai(X,lisa),pai(Y,bart).
        X = Y, Y = homer
Sim, Maggie e Bart têm o mesmo pai.

*/
/* Ex. 4 Regras para relação de avô,avó,filho,filha,irmao,irma,tio,tia,primo,prima*/
avo(X,Y):-
      pai(X,Z),
      pai(Z,Y).

avo(X,Y):-
      pai(X,Z),
      mae(Z,Y).

/* avo2 = avó */
avo2(X,Y):-
      mae(X,Z),
      mae(Z,Y).

avo2(X,Y):-
      mae(X,Z),
      pai(Z,Y).
      

filho(X,Y):-pai(Y,X),homem(X).
filha(X,Y):-pai(Y,X),mulher(X).
irmao(X,Y):-pai(Z,X),pai(Z,Y),homem(X).
irma(X,Y):-pai(Z,X),pai(Z,Y),mulher(X).
irmaos(X,Y):-pai(Z,X),pai(Z,Y).
tio(X,Y):-pai(Z,Y),irmao(X,Z),homem(X).
tia(X,Y):-pai(Z,Y),irmao(X,Z),mulher(X).

primo(X,Y):-
        mae(Z,X),
        mae(W,Y),
        irmaos(Z,W),
        Z\=W,
        homem(X).
        
primo(X,Y):-
        pai(Z,X),
        pai(W,Y),
        irmaos(Z,W),
        Z\=W,
        homem(X).

primo(X,Y):-
        mae(Z,X),
        pai(W,Y),
        irmaos(Z,W),
        Z\=W,
        homem(X).

primo(X,Y):-
        pai(Z,X),
        mae(W,Y),
        irmaos(Z,W),
        Z\=W,
        homem(X).

prima(X,Y):-
        mae(Z,X),
        mae(W,Y),
        irmaos(Z,W),
        Z\=W,
        mulher(X).
        
prima(X,Y):-
        pai(Z,X),
        pai(W,Y),
        irmaos(Z,W),
        Z\=W,
        mulher(X).

prima(X,Y):-
        mae(Z,X),
        pai(W,Y),
        irmaos(Z,W),
        Z\=W,
        mulher(X).

prima(X,Y):-
        pai(Z,X),
        mae(W,Y),
        irmaos(Z,W),
        Z\=W,
        mulher(X).

/************************************/

/*BASE DE CONHECIMENTO 2 */
:- dynamic feiticeiro/1.

elfo_domestico(dobby).
bruxo(hermione).
bruxo('McGonagall').
bruxo(rita_skeeter).

magico(X):- elfo_domestico(X).
magico(X):- feiticeiro(X).
magico(X):- bruxo(X).

/*Quais das seguintes consultas são satisfeitas? Onde relevante, dê todas
as instanciações de variáveis que levam ao sucesso.

Ex. 5 magico(elfo_domestico).

Ex. 6 feiticeiro(harry).

Ex. 7 magico(feiticeiro).

Ex. 8 magico('McGonagall').       ESSA É SATISFEITA (TRUE), POIS PARA SER MÁGICO TEM QUE SER OU ELFO DOMÉSTICO, OU FEITICEIRO OU BRUXO E 'McGonagall' é um bruxo pois tem o fato "bruxo('McGonagall').".

Ex. 9 magico(Hermione).


Árvore de busca para quinta consulta:                 
?-  magico(Hermione).

                                                                                ?-magico(Hermione).
                                                                                          |
                --------------------------------------------------------------------- Hermione = X ----------------------------------------
                |                                       |                                                                                 |
                |                                       |                                                                                 |
         ?-elfo_domestico(X).                    ?-feiticeiro(X).                                  --------------------------------- ?- bruxo(X). ------------------------------      
              |                                       |                                            |                                      |                                    |
           X = dobby                      não existe nenhum fato com feiticeiro              X = hermione          OU              X = 'McGonagall'         OU        X = rita_skeeter
  ?- elfo_domestico(dobby).                        (FAIL)                                          |                                       |                                    |                                
              |                                                                              ?-bruxo(hermione).                   ?-bruxo('McGonagall').             ?- bruxo(rita_skeeter). 
        Hermione = dobby                                                                           |                                       |                                    |
                                                                                             Hermione = hermione                   Hermione = 'McGonagall'            Hermione = rita_skeeter



*/

/*BASE DE CONHECIMENTO 3 */
palavra(artigo,uma).
palavra(artigo,qualquer).               %'qualquer' ́e um pronome, mas deixaremos assim.
 palavra(nome,pessoa).
 palavra(nome,'sopa de legumes').
 palavra(verbo,come).
 palavra(verbo,adora).
 sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5):-
        palavra(artigo,Palavra1),
        palavra(nome,Palavra2),
        palavra(verbo,Palavra3),
        palavra(artigo,Palavra4),
        palavra(nome,Palavra5).

/*Ex. 10
Qual  consulta  deve-se  colocar  a  fim  de  encontrar  quais  sentenças  a gramática pode gerar?

? - sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5).
*/

/* Ex. 11  
Liste  todas  as  sentenças  que  esta  gramática  pode  gerar  na  mesma ordem em que o Prolog as geraria.

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = come ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = pessoa,
Palavra3 = come,
Palavra5 = 'sopa de legumes' ;

Palavra1 = uma,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = come,
Palavra4 = qualquer ;

Palavra1 = uma,
Palavra2 = pessoa,
Palavra3 = come,
Palavra4 = qualquer,
Palavra5 = 'sopa de legumes' ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = adora ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = pessoa,
Palavra3 = adora,
Palavra5 = 'sopa de legumes' ;

Palavra1 = uma,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = adora,
Palavra4 = qualquer ;

Palavra1 = uma,
Palavra2 = pessoa,
Palavra3 = adora,
Palavra4 = qualquer,
Palavra5 = 'sopa de legumes' ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = 'sopa de legumes',
Palavra3 = come,
Palavra5 = pessoa ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = come ;

Palavra1 = uma,
Palavra2 = 'sopa de legumes',
Palavra3 = come,
Palavra4 = qualquer,
Palavra5 = pessoa ;

Palavra1 = uma,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = come,
Palavra4 = qualquer ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = 'sopa de legumes',
Palavra3 = adora,
Palavra5 = pessoa ;

Palavra1 = Palavra4, Palavra4 = uma,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = adora ;

Palavra1 = uma,
Palavra2 = 'sopa de legumes',
Palavra3 = adora,
Palavra4 = qualquer,
Palavra5 = pessoa ;

Palavra1 = uma,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = adora,
Palavra4 = qualquer ;

Palavra1 = qualquer,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = come,
Palavra4 = uma ;

Palavra1 = qualquer,
Palavra2 = pessoa,
Palavra3 = come,
Palavra4 = uma,
Palavra5 = 'sopa de legumes' ;
Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = come ;

Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = pessoa,
Palavra3 = come,
Palavra5 = 'sopa de legumes' ;

Palavra1 = qualquer,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = adora,
Palavra4 = uma ;

Palavra1 = qualquer,
Palavra2 = pessoa,
Palavra3 = adora,
Palavra4 = uma,
Palavra5 = 'sopa de legumes' ;
Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = Palavra5, Palavra5 = pessoa,
Palavra3 = adora ;

Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = pessoa,
Palavra3 = adora,
Palavra5 = 'sopa de legumes' ;
Palavra1 = qualquer,
Palavra2 = 'sopa de legumes',
Palavra3 = come,
Palavra4 = uma,
Palavra5 = pessoa ;

Palavra1 = qualquer,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = come,
Palavra4 = uma ;

Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = 'sopa de legumes',
Palavra3 = come,
Palavra5 = pessoa ;

Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = come ;

Palavra1 = qualquer,
Palavra2 = 'sopa de legumes',
Palavra3 = adora,
Palavra4 = uma,
Palavra5 = pessoa ;

Palavra1 = qualquer,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = adora,
Palavra4 = uma ;

Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = 'sopa de legumes',
Palavra3 = adora,
Palavra5 = pessoa ;

Palavra1 = Palavra4, Palavra4 = qualquer,
Palavra2 = Palavra5, Palavra5 = 'sopa de legumes',
Palavra3 = adora.

O prolog faz a busca e unificação de acordo com a ordem que os fatos e regras foram escritos na base de conhecimento.

*/
/* BASE DE CONHECIMENTO 4 */
aluno(paulo,poo).
aluno(pedro,poo).
aluno(maria,pl).
aluno(rui,pl).
aluno(manuel,pl).
aluno(pedro,pl).
aluno(rui,ed1).
estuda(paulo).
estuda(maria).
estuda(manuel).
cursapl(X):-aluno(X,pl), estuda(X).

/* Ex. 12  
Verifique que os fatos estão presentes na Base de Conhecimento (utilize o predicado listing).
OK

--------------------------------
Ex. 13
Escreva uma consulta que verifique se paulo  ́e aluno de pl.

?- aluno(paulo,pl).
false

--------------------------------
 Ex. 14
Escreva uma consulta que verifique se rui  ́e aluno de poo.

?- aluno(rui,poo).
false

--------------------------------
Ex. 15
Escreva uma consulta que verifique se paulo e maria sao ambos alunos de ed1.paulo e maria ̃sao ambos alunos deed1se paulo for aluno de ed1 e maria for aluna de ed1.

?- aluno(paulo,ed1),aluno(maria,ed1).
false.

--------------------------------
Ex. 16
Escreva uma consulta que permita saber quem  ́e aluno de pl.

?- aluno(X,pl).
X = maria ;
X = rui ;
X = manuel ;
X = pedro.

--------------------------------
Ex. 17 
Escreva uma consulta que permita saber as disciplinas em que rui  ́e aluno.

?- aluno(rui,X).
X = pl ;
X = ed1.
--------------------------------
Ex. 18  Sabendo que a aluno A faz a disciplina D se A  ́e aluno de D e A estuda, escreva uma consulta que lhe permita saber se maria cursa pl.

?- estuda(maria),aluno(maria,pl).
true.

--------------------------------
Ex. 19  Experimente agora a segunte consulta:
?- aluno(X,pl), estuda(X).

O que lhe permite esta consulta saber?
R = Essa consulta permite saber quais são os alunos que cursam pl e que também estudam (manoel e maria).

Ex. 20
Utilizando a consulta anterior, acrescente à Base de Conhecimento o predicado cursapl/1 e  escreva uma consulta que lhe permita saber quem cursa pl.

cursapl(X):-aluno(X,pl), estuda(X).

*/

