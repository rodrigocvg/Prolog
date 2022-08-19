idade(pedro, 8).
idade(ana, 5).
idade(paula, 8).
idade(ricardo,10).
idade(carla,5).
idade(amanda,12).
idade(sara,15).

/* 
(a) uma lista com todas as pessoas com 5 anos de idade.

?- findall(X,(idade(X,Y),Y=5),L).
L = [ana, carla].

(b) uma lista com as idades de todas as pessoas em ordem crescente e sem duplicacoes.
?- setof(Y,X^idade(X,Y),L).
L = [5, 8, 10, 12, 15].


(c) uma lista com os nomes de todas as pessoas.
?- setof(X,Y^idade(X,Y),L).
L = [amanda, ana, carla, paula, pedro, ricardo, sara].


(d) uma lista com os nomes de todas as pessoas cuja idades estejam no intervalo fechado
de 8 a 12 anos.
?- findall(X,(idade(X,Y),Y>=8,Y=<12),L).
L = [pedro, paula, ricardo, amanda].




*/