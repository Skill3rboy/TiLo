%natSymb(X) : X ist nat. Zahl in symb. Darstellung
natSymb(o).
natSymb(s(X)) :- natSymb(X).



%kante(X,Y) : Gibt Kante von X nach Y.
kante(a,b).
kante(a,c).
kante(a,d).
kante(a,e).
kante(b,c).
kante(b,d).
kante(b,e).
kante(c,d).
kante(e,c).
kante(e,d).

-weg(X,Y) :- kante(X,Y).
weg(X,Y) :- kante(X,Irgend), weg(Irgend,Y).

wegLange(X,X,o).
wegLange(X,Y,Lange):- kante(X,Irgend), wegLange(Irgend,Y,Lange), natSymb(Lange).
