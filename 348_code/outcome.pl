
outcome([_, E | L], [E | M]):- !, outcome(L,M).
outcome(_, []).

