/* Ex. 6 */


replicaAcum([],_,0,[]).
replicaAcum([X],_,0,[X]).
replicaAcum([X|Y],N,Acum,[X|B]):- Acum is N - 1, replicaAcum(Y,Acum,Z,B). 

replica(L,N,R):- replicaAcum(L,N,0,R).  




