/* Sem Corte  */
max(X,Y,Y):- X =< Y.
max(X,Y,X):- X>Y.

/* Corte Verde */
max1(X,Y,Y):- X =< Y, !.
max1(X,Y,X):- X>Y.

/* Corte Vermelho  */
max2(X,Y,Y):- X =< Y, !.
max2(X,Y,X).


/*
trace sem corte
max(200,300,X).
  Call:max(200, 300, _4184)
  Call:200=<300
  Exit:200=<300
  Exit:max(200, 300, 300)

max(200,300,200).
  Call:max(200, 300, 200)
  Call:200>300
  Fail:200>300
  Fail:max(200, 300, 200)
false

trace Corte Verde
max(200,300,200).
 Call:max1(200, 300, 200)
 Call:200>300
 Fail:200>300
 Fail:max1(200, 300, 200)
false

max(200,300,X).
 Call:max1(200, 300, _4378)
 Call:200=<300
 Exit:200=<300
 Exit:max1(200, 300, 300)
X = 300

trace Corte Vermelho
max2(200,300,X).
 Call:max2(200, 300, _4536)
 Call:200=<300
 Exit:200=<300
 Exit:max2(200, 300, 300)
X = 300

max2(200,300,200).
 Call:max2(200, 300, 200)
 Exit:max2(200, 300, 200)
true


*/