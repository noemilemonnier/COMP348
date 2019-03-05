rev([],[]).
rev([H|T], L):- rev(T, RL), append(T, [H], L).

rev+(L1, L2):- rev(L1, L3), append(L3, L1, L2).

