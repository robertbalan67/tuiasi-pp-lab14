left_of(X, Y, List) :- append(_, [X, Y | _], List).

next_to(X, Y, List) :- left_of(X, Y, List).
next_to(X, Y, List) :- left_of(Y, X, List).

solution(Houses) :-
    length(Houses, 5),
    member(house(red, brit, _, _, _), Houses),
    member(house(_, swede, dog, _, _), Houses),
    member(house(_, dane, _, tea, _), Houses),
    left_of(house(green, _, _, _, _), house(white, _, _, _, _), Houses),
    member(house(green, _, _, coffee, _), Houses),
    member(house(_, _, bird, _, pall_mall), Houses),
    member(house(yellow, _, _, _, dunhill), Houses),
    Houses = [_, _, house(_, _, _, milk, _), _, _],
    Houses = [house(_, norwegian, _, _, _) | _],
    next_to(house(_, _, _, _, blends), house(_, _, cat, _, _), Houses),
    next_to(house(_, _, horse, _, _), house(_, _, _, _, dunhill), Houses),
    member(house(_, _, _, beer, blue_master), Houses),
    member(house(_, german, _, _, prince), Houses),
    next_to(house(_, norwegian, _, _, _), house(blue, _, _, _, _), Houses),
    next_to(house(_, _, _, _, blends), house(_, _, _, water, _), Houses).

einstein(Owner) :-
    solution(Houses),
    member(house(_, Owner, fish, _, _), Houses).
