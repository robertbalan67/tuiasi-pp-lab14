% Reguli de baza ajutatoare:
frate_sau_sora(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% sora_lui/2
sora_lui(Sora, Persoana) :-
    female(Sora),
    frate_sau_sora(Sora, Persoana).

% bunic/2
bunic(Bunic, Nepot) :-
    male(Bunic),
    parent(Bunic, Parinte),
    parent(Parinte, Nepot).

% matusa/2
matusa(Matusa, Persoana) :-
    parent(Parinte, Persoana),
    sora_lui(Matusa, Parinte).

% var/2
var(Var, Persoana) :-
    parent(ParintePersoana, Persoana),
    parent(ParinteVar, Var),
    frate_sau_sora(ParintePersoana, ParinteVar).

% nepot/2
nepot(Nepot, BunicSauBunica) :-
    parent(BunicSauBunica, Parinte),
    parent(Parinte, Nepot).

% stranepot/2
stranepot(Stranepot, Strabunic) :-
    parent(Strabunic, Bunic),
    parent(Bunic, Parinte),
    parent(Parinte, Stranepot).
