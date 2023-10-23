sigma_ab(a).
sigma_ab(b).
sigma_gerade([]).
sigma_gerade([A|Ws]) :-sigma_ab(A),sigma_gerade(Ws).

sigma_bin(0).
sigma_bin(1).
sigma_end01([]).
sigma_end01([A|Ws]) :-sigma_bin(A),sigma_end01(Ws),append([0,1]).

sigma_palin_bin([]).
sigma_palin_bin([A|Ws]) :- sigma_bin(A),sigma_palin_bin(Ws),reverse([A|Ws]).

sigma_agb([]).
sigma_agb([a|Ws|b]) :- sigma_agb(Ws).
