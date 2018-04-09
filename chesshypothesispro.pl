%User Interface
go :-	write('****************** My Expert System for Chess Problem Solving*********************** '),nl,
	write('System menu'),nl,
	write('Is the hypothesis true(y) ?'),nl,

write('Is the hypothesis false(y) ?'),nl,

write('Will the plan succeed?(y) ?'),nl,


write('Will the plan refute?(y) ?'),nl,
write('Combine Plans (R1,R2)'),nl,

write('To move to next option press (n)'),nl,
write('Is the hypothesis true(y) ?'),nl,
    responsey(Reply),

write('Is the hypothesis false(y) ?'),nl,
    responsen(Reply),

write('Will the plan succeed?(y) ?'),nl,
    responsem(Reply),

write('Will the plan refute?(y) ?'),nl,
    responseo(Reply),

 write('Plan Combine R1 value'),nl,
    read(R1), write('Plan Combine R2 value'),nl,
    read(R2),


combined(R1,R2).

%Knowledge Base
or(A,_) :- A.
or(_,B) :- B.
hypothesis_true(H) :- write_list(['hypothesis is true']),nl.
hypothesis_fails(H) :- write_list(['hypothesis is false']),nl.
plan(succeeds) :-write_list([' plan succeeds ']),nl, hypothesis_true(H),nl.
plan(refutes) :- write_list([' plan fails ']),nl, hypothesis_fails(H1),nl.
combined(R1,R2) :- write_list([' R1 OR R2 affects Plan P ']),nl,or(R1,R2),nl,plan(succeeds).

%Inference Engine
write_list([]).
write_list([Term| Terms]) :-
    write(Term),
    write_list(Terms).

responsey(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code),Reply='y',hypothesis_true(Reply).
responsen(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code),Reply='y',hypothesis_fails(Reply).

responsem(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code),Reply='y',plan(succeeds).
responseo(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code),Reply='y',plan(refutes).






















