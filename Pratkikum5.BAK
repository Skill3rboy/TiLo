%Zustandsmenge :
zustand(vS).
zustand(vA).
zustand(vB).
zustand(vC).
%Alphabet:
simga(0).
simga(1).
%Startzustand:
start(vS).
%Endzustand:
end(vC).
%delta:
delta(vS,0,vS).
delta(vS,1,vS).
delta(vS,0,vA).
delta(vA,1,vB).
delta(vB,0,vC).

%accept(Xs) :-start(Q),accept(Xs,Q).
%accept([X|Xs],Q) :- delta(Q,X,Q1), accept(Xs,Q1).
%accept([],Q) :- end(Q).

%
lvonN(Ws):- start(SZ), end(EZ), delta_stern(SZ,Ws,EZ), sigma_stern(Ws).
%
delta_stern(AktZ,[],AktZ).
delta_stern(AktZ,[A,Ws],NeuZ):- delta(AktZ,A,NachZ), delta_stern(NachZ,Ws,NeuZ).
%
sigma_stern([]).
sigma_stern([A|Ws]):- sigma(A),simga_stern(Ws).
