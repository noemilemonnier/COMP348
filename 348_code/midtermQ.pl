%midterm question on the sublist :: mysublist(InputList, Start, End, Output)
mysublist(List, Start, End, Output) :- End >= Start, End1 is End - Start + 1, mytrimleft(List, Start, Inter), mytrimright(Inter, End1, Output). 

mytrimleft(List, 0, List):-!
mytrimleft([_|T], S, TRes):- S1 is S - 1, mytrimleft(T, S1, TRES).

mytrimright(_, 0, []):-!.
mytrimright([H|T], EndI, [H|TRes]):- E1 is EndI - 1, mytrimright(T, E1, TRes).



