male(john).
male(robert).
male(james).
male(david).

female(mary).
female(lisa).
female(susan).
female(anna).

parent(john, robert).
parent(mary, robert).

parent(john, lisa).
parent(mary, lisa).

parent(robert, james).
parent(susan, james).

parent(robert, anna).
parent(susan, anna).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

brother(X, Y) :-
    male(X),
    sibling(X, Y).

sister(X, Y) :-
    female(X),
    sibling(X, Y).