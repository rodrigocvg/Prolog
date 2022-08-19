

classe(Numero, positivo):- Numero > 0.
classe(0, zero).
classe(Numero, negativo):- Numero < 0.


/* Melhorando utilizando adição de cortes */

classe1(Numero, positivo):- Numero > 0,!.
classe1(Numero, negativo):- Numero < 0,!.
classe1(0, zero).