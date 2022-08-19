triplas([X,Y,Z]) :-
				X>0,Y>0,Z>0,
				X<10,Y<10,Z<10,
				X=\=Y,X=\=Z,Y=\=Z,
				(10*X+Y)/(10*Y+Z)=:=(X/Z).