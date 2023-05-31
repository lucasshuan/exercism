triangle(A, B, C, _) :- A + B < C, !, fail.
triangle(A, B, C, _) :- B + C < A, !, fail.
triangle(A, B, C, _) :- C + A < B, !, fail.

triangle(A, B, C, _) :- (A = 0; B = 0; C = 0), !, fail.

triangle(S, S, S, "equilateral") :- !.

triangle(S, S, _, "isosceles") :- !.
triangle(S, _, S, "isosceles") :- !.
triangle(_, S, S, "isosceles") :- !.

triangle(A, B, C, "scalene") :- A \= B, B \= C, C \= A, !.