aprecia(vicente,X):- bigKahunaBurger(X), !, fail.
aprecia(vicente,X):- hamburguer(X).

hamburguer(X):- bigMac(X).
hamburguer(X):- bigKahunaBurger(X).
hamburguer(X):- whopper(X).

bigMac(a).
bigMac(c).
bigKahunaBurger(b).
whopper(d).

/*trace
aprecia(vicente,bigMac(X)).
 Call:aprecia(vicente, bigMac(_4734))
 Call:bigKahunaBurger(bigMac(_4734))
 Fail:bigKahunaBurger(bigMac(_4734))
 Redo:aprecia(vicente, bigMac(_4734))
 Call:hamburguer(bigMac(_4734))
 Call:bigMac(bigMac(_4734))
 Fail:bigMac(bigMac(_4734))
 Redo:hamburguer(bigMac(_4734))
 Call:bigKahunaBurger(bigMac(_4734))
 Fail:bigKahunaBurger(bigMac(_4734))
 Redo:hamburguer(bigMac(_4734))
 Call:whopper(bigMac(_4734))
 Fail:whopper(bigMac(_4734))
 Fail:hamburguer(bigMac(_4734))
 Fail:aprecia(vicente, bigMac(_4734))
false

aprecia(vicente,whopper(X)).
 Call:aprecia(vicente, whopper(_4734))
 Call:bigKahunaBurger(whopper(_4734))
 Fail:bigKahunaBurger(whopper(_4734))
 Redo:aprecia(vicente, whopper(_4734))
 Call:hamburguer(whopper(_4734))
 Call:bigMac(whopper(_4734))
 Fail:bigMac(whopper(_4734))
 Redo:hamburguer(whopper(_4734))
 Call:bigKahunaBurger(whopper(_4734))
 Fail:bigKahunaBurger(whopper(_4734))
 Redo:hamburguer(whopper(_4734))
 Call:whopper(whopper(_4734))
 Fail:whopper(whopper(_4734))
 Fail:hamburguer(whopper(_4734))
 Fail:aprecia(vicente, whopper(_4734))
false

aprecia(vicente,bigKahunaBurger(X)).
 Call:aprecia(vicente, bigKahunaBurger(_4734))
 Call:bigKahunaBurger(bigKahunaBurger(_4734))
 Fail:bigKahunaBurger(bigKahunaBurger(_4734))
 Redo:aprecia(vicente, bigKahunaBurger(_4734))
 Call:hamburguer(bigKahunaBurger(_4734))
 Call:bigMac(bigKahunaBurger(_4734))
 Fail:bigMac(bigKahunaBurger(_4734))
 Redo:hamburguer(bigKahunaBurger(_4734))
 Call:bigKahunaBurger(bigKahunaBurger(_4734))
 Fail:bigKahunaBurger(bigKahunaBurger(_4734))
 Redo:hamburguer(bigKahunaBurger(_4734))
 Call:whopper(bigKahunaBurger(_4734))
 Fail:whopper(bigKahunaBurger(_4734))
 Fail:hamburguer(bigKahunaBurger(_4734))
 Fail:aprecia(vicente, bigKahunaBurger(_4734))
false
*/