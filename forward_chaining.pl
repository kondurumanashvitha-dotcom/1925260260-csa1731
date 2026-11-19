% Initial facts
fact(sun_rises).
fact(daytime).

% Forward chaining rules
derived(light) :-
    fact(sun_rises).

derived(warmth) :-
    fact(daytime).

derived(photosynthesis) :-
    derived(light),
    derived(warmth).

% Display derived facts
forward_chaining :-
    derived(X),
    write('Derived fact: '),
    write(X),
    nl,
    fail.

forward_chaining.