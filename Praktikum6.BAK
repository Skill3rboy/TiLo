%Zustandsmenge
zustand(z0).
zustand(z1).
%Eingabealphabet
sigma(0).
sigma(1).
%Kelleralphabet
gamma(#).
gamma(0).
gamma(1).
%start
start(z0).

%kellerboden
ende(#).
%delta
delta(z0,1,#,z0,[1,#]).
delta(z0,1,0,z0,[1,0]).
delta(z0,1,1,z0,[1,1]).
delta(z0,0,#,z0,[0,#]).
delta(z0,0,0,z0,[0,0]).
delta(z0,0,1,z0,[0,1]).
delta(z0,nix,#,z1,[#]).
delta(z0,nix,0,z1,[0]).
delta(z0,nix,1,z1,[1]).
delta(z1,1,1,z1,[]).
delta(z1,0,0,z1,[]).
delta(z1,nix,#,z1,[]).

%
sigma_stern([]).
sigma_stern([W|Ws]):- sigma_stern(Ws),sigma(W).

%Einzelschrittrelation
es(Z,[W|Ws],[T|Tk],Z2,Ws,Tkn) :- delta(Z,W,T,Z2,Tn),append(Tn,Tk,Tkn).
es(Z,Ws,[T|Tk],Z2,Ws,Tkn):- delta(Z,nix,T,Z2,Tn), append(Tn,Tk,Tkn).

es_plus(_, [], [Tk]) :- ende(Tk).
es_plus(Z, Ws, Ks) :- es(Z, Ws, Ks, ZN, WNs, KNs), es_plus(ZN, WNs, KNs).

lvonM(Ws) :-sigma_stern(Ws), start(Z), zustand(Z), ende(Tk), gamma(Tk), es_plus(Z, Ws, [Tk]).

