% Initial facts
has_feathers.
has_wings.
lays_eggs.

% Rules for identifying a bird
bird :-
    has_feathers,
    has_wings,
    lays_eggs.

% Rule for checking whether it can fly
can_fly :-
    bird.

% Backward chaining
backward_chaining :-
    can_fly,
    write('Goal achieved: Bird can fly.').