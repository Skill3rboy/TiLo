%Zustandsmenge :
zustand(vS).
zustand(vA).
zustand(vB).
zustand(vC).
%Alphabet:
sigma(0).
sigma(1).
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

% Test: lvonN([0,0,1,0,1,0]). = true
lvonN(Ws):-  start(SZ), end(EZ),delta_stern(SZ,Ws,EZ),sigma_stern(Ws).
% AktZ=Z0 , NeuZ= Z1, NachZ= Z2
delta_stern(AktZ,[],AktZ).
delta_stern(AktZ,[A|Ws],NeuZ):- delta(AktZ,A,NachZ), delta_stern(NachZ,Ws,NeuZ).
%
sigma_stern([]).
sigma_stern([A|Ws]):- sigma(A),sigma_stern(Ws).
