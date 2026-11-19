bird(sparrow).
bird(parrot).
bird(pigeon).
bird(crow).
bird(ostrich).
bird(penguin).

can_fly(sparrow).
can_fly(parrot).
can_fly(pigeon).
can_fly(crow).

cannot_fly(ostrich).
cannot_fly(penguin).

check_bird(Bird) :-
    bird(Bird),
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

check_bird(Bird) :-
    bird(Bird),
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.').