move(1, Start, End, _, NumOfMoves, NewNumOfMoves) :-
    write('Move the top disk from '),
    write(Start),
    write(' to '),
    write(End),
    nl,
    NewNumOfMoves is NumOfMoves + 1.

move(Number, Start, End, Aux, NumOfMoves, NewNumOfMoves) :-
    Number > 1,
    X is Number - 1,
    move(X, Start, Aux, End, NumOfMoves, IntermediateMoves),
    move(1, Start, End, _, IntermediateMoves, NewIntermediateMoves),
    move(X, Aux, End, Start, NewIntermediateMoves, NewNumOfMoves).

disks(N) :- move(N, left, right, center, 0, TotalMoves),
    write('The total number of moves is: '), write(TotalMoves).
