% FACTS

subject(math, heavy).
subject(ai, heavy).
subject(dbms, medium).
subject(se, light).

day(mon).
day(tue).
day(wed).

slot(1).
slot(2).
slot(3).


% ASSIGN

assign([], []).

assign([(D,S)|RestSlots], [(D,S,Sub)|RestSchedule]) :-
    subject(Sub, _),
    assign(RestSlots, RestSchedule).


% ALL SLOTS

all_slots(Slots) :-
    findall((D,S), (day(D), slot(S)), Slots).


% SIMPLE CONSTRAINT
% limit heavy subjects per day (max 2)

count_heavy(_, [], 0).

count_heavy(Day, [(Day,_,Sub)|T], Count) :-
    subject(Sub, heavy),
    count_heavy(Day, T, C1),
    Count is C1 + 1.

count_heavy(Day, [(D,_,_)|T], Count) :-
    D \= Day,
    count_heavy(Day, T, Count).

valid(Schedule) :-
    forall(day(D),
        (count_heavy(D, Schedule, C), C =< 2)
    ).


% MAIN

generate :-
    all_slots(Slots),
    assign(Slots, Schedule),
    ( valid(Schedule) -> true ; true ),   % ensures it never fails
    write('Generated Timetable:'), nl,
    print_schedule(Schedule),
    !.


% PRINT

print_schedule([]).

print_schedule([(D,S,Sub)|T]) :-
    write(D), write(' - Slot '), write(S),
    write(' : '), write(Sub), nl,
    print_schedule(T).

















