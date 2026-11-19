location(atdoor).
location(middle).
location(window).

move(state(middle, onbox, middle, hasnot),
     grasp,
     state(middle, onbox, middle, has)).

move(state(P, onfloor, P, H),
     climb,
     state(P, onbox, P, H)).

move(state(P1, onfloor, B, H),
     walk(P1, P2),
     state(P2, onfloor, B, H)) :-
    location(P2),
    P1 \= P2.

move(state(P1, onfloor, B, H),
     push(P1, P2),
     state(P2, onfloor, P2, H)) :-
    location(P2),
    P1 \= P2.

solve(State, []) :-
    State = state(_, _, _, has).

solve(State, [Action | Rest]) :-
    move(State, Action, NewState),
    solve(NewState, Rest).
    