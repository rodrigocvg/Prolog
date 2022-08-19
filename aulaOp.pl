% Se a cozinha esta seca e o corredor molhado
% entao o vazamento de agua esta no banheiro.
vazamento(banheiro):- seco(cozinha), molhado(corredor).
% Se o corredor esta molhado e o banheiro esta seco
% entao o problema esta na cozinha.
problema(cozinha):- molhado(corredor), seco(banheiro).
% Se a janela esta fechada ou nao chove
% entao nao entra agua do exterior.
nao_entra_agua(exterior):- fechado(janela); nao(chove).
% Se o problema esta na cozinha e nao entra agua do exterior
% entao o vazamento de agua esta na cozinha.
vazamento(cozinha):- problema(cozinha), nao_entra_agua(exterior).
% Evidencias:
% O corredor esta molhado.
molhado(corredor).
% O banheiro esta seco.
seco(banheiro).
% A janela esta fechada.
fechado(janela).

:-op(875,xfx, fato).
:-op(875,xfx, #).
:-op(825,fx, se).
:-op(850,xfx, entao).
:-op(800,xfy, ou). % Associatividade a direita
:-op(775,xfy, e). % Associatividade a direita
:-op(750,fy, nao). % Associatividade a direita



% Se a cozinha esta seca e o corredor molhado
% entao o vazamento de agua esta no banheiro.
r1 # se cozinha_seca e corredor_molhado
entao vazamento_no_banheiro.
% Se o corredor esta molhado e o banheiro esta seco
% entao o problema esta na cozinha.
r2 # se corredor_molhado e banheiro_seco
entao problema_na_cozinha.
% Se a janela esta fechada ou nao chove
% entao nao entra agua do exterior.
r3 # se janela_fechada ou nao chove
entao nao entra_agua_do_exterior.
% Se o problema esta na cozinha e nao entra agua do exterior
% entao o vazamento de agua esta na cozinha.
r4 # se problema_na_cozinha e nao entra_agua_do_exterior
entao vazamento_na_cozinha.
% Evid^encias:
% O corredor esta molhado.
f1 fato corredor_molhado.
% O banheiro esta seco.
f2 fato banheiro_seco.
% A janela esta fechada.
f3 fato janela_fechada.
deduz(P):- _ fato P.
deduz(P):- _ # se C entao P, deduz(C).
deduz(nao P):- \+ deduz(P).
deduz(P1 e P2):- deduz(P1), deduz(P2).
deduz(P1 ou _):- deduz(P1).
deduz(_ ou P2):- deduz(P2).
