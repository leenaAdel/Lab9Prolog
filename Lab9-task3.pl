calculate_total_and_average :-
    write('Enter first number: '), read(N1),
    write('Enter second number: '), read(N2),
    write('Enter third number: '), read(N3),

    Total is N1 + N2 + N3,
    Average is Total / 3,

    nl,
    write('Total = '), write(Total), nl,
    write('Average = '), write(Average), nl.
