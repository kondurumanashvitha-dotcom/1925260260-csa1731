% Graph edges
edge(a, b, 4).
edge(a, c, 2).
edge(b, d, 5).
edge(c, d, 1).
edge(c, e, 3).
edge(d, f, 2).
edge(e, f, 1).

% Heuristic values
heuristic(a, 6).
heuristic(b, 4).
heuristic(c, 3).
heuristic(d, 2).
heuristic(e, 1).
heuristic(f, 0).

% Best First Search
best_first(Start, Goal, Path) :-
    heuristic(Start, H),
    best_search([H-[Start]], Goal, RevPath),
    reverse(RevPath, Path).

best_search([_-[Goal|Rest]|_], Goal, [Goal|Rest]).

best_search([_-[Current|Rest]|OtherPaths], Goal, Path) :-
    findall(
        H-[Next,Current|Rest],
        (edge(Current, Next, _),
         heuristic(Next, H),
         \+ member(Next, [Current|Rest])),
        NewPaths
    ),
    append(OtherPaths, NewPaths, AllPaths),
    keysort(AllPaths, SortedPaths),
    best_search(SortedPaths, Goal, Path).
    