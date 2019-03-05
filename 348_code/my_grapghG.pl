node(a).
node(b).
node(c).
node(d).
node(h).
node(e).
node(f).
node(g).
edge(a,b).
edge(b,c).
edge(c,a).
edge(c,e).
edge(c,d).
edge(d,h).
edge(d,e).
edge(e,f).
edge(e,g).

edge(f,g).

edge(g,e).

parent(X,Y):- edge(X,Y).
ancestor(X,Y):- parent(X,Z), parent(Z,Y).
child(X,Y) :-    parent(Y, X).

path(X,Y) :-  path(X,Y, P), write(P).
path(X, Y, P):- travel(X, Y, [X], Q), reverse(Q, P).

travel(X, Y, P, [Y|P]):- edge(X,Y).
travel(X, Y, V, P):- edge(X, Z), Z \==Y, \+member(Z, V), travel(Z, Y, [Z|V],P).

length_of_path(X,Y,Length):- path(X,Y,P), length(P,Length).

connected(X,Y):-  path(X,Y) ; path(Y,X).

undirected_edge(X,Y) :- edge(X,Y) ; edge(Y,X).

undirected_path(X,Y):- path(X,Y); path(Y,X).
undirected_path(X,Y,P):-  path(X,Y, P); path(Y,X,P).
tpath(Node1,Node2):-edge(Node1, SomeNode), edge(SomeNode,Node2).
