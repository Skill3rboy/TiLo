    %kind(X,Y) = X ist Kind von Y
    kind(fabian,mark).
    kind(tabea,mark).
    kind(fabian,sonja).
    kind(moritz,mark).
    kind(sonja,helga).
    kind(nicole,helga).
    kind(daniel,helga).
    kind(nathalie,nicole).
    kind(sonja,theo).
    
    %m‰nnlich(X) = X ist m‰nnlich
    m‰nnlich(fabian).
    m‰nnlich(mark).
    m‰nnlich(moritz).
    m‰nnlich(daniel).
    m‰nnlich(theo).
    
    %vater(X,Y) = X ist der Vater von Y
    vater(X,Y):- kind(Y,X) , m‰nnlich(X).

    %mutter(X,Y) = X ist die Mutter von Y
    mutter(X,Y):- kind(Y,X) , not( m‰nnlich(X)).

    %sohn = X ist der Sohn von Y
    sohn(X,Y) :- kind(X,Y), m‰nnlich(X).

    %tochter(X,Y) = X ist die Tochter von Y
    tochter(X,Y) :- kind(X,Y), not(m‰nnlich(X)).
    
    %bruder(X,Y) = X ist der Bruder von Y
    bruder(X,Y) :- kind(X,Z), kind(Y,Z),m‰nnlich(X), X\=Y.
    
    %schwester(X,Y) = X ist die schwester von Y
    schwester(X,Y) :- kind(X,Z), kind(Y,Z),not(m‰nnlich(X)).

    %onkel(X,Y) = X ist der Onkel von Y, Y ist Neffe/nichte
    onkel(X,Y) :- bruder(X,Z), kind(Y,Z).
    
    %cousine(X,Y) = X ist die cousine von Y, Y ist cousin/cousine
    cousine(X,Y):-  kind(X,I),kind(Y,K), kind(I,Z),kind(K,Z), not(m‰nnlich(X)).
    
    %groﬂvater(X,Y) = X ist der groﬂvater von Y, Y ist enkel
    groﬂvater(X,Y):- kind(Y,Z), kind(Z,X), m‰nnlich(X).
