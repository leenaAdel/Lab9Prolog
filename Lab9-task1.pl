% AND Truth Table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR Truth Table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% NOT Truth Table
neg(true, false).
neg(false, true).

% Main Rule: (A AND B) OR (NOT A AND NOT B)
eval_expr(A, B, Output) :-
    and(A, B, Term1),        % Term1 = (A ^ B)
    neg(A, NotA),            % NotA  = ~A
    neg(B, NotB),            % NotB  = ~B
    and(NotA, NotB, Term2),  % Term2 = (~A ^ ~B)
    or(Term1, Term2, Output).% Output = Term1 V Term2
