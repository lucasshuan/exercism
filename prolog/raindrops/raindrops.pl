convert(N, "PlingPlangPlong") :-
  0 is N mod 3,
  0 is N mod 5,
  0 is N mod 7.

convert(N, "PlingPlang") :- 
  0 is N mod 3,
  0 is N mod 5.

convert(N, "PlingPlong") :- 
  0 is N mod 3,
  0 is N mod 7.

convert(N, "PlangPlong") :- 
  0 is N mod 5,
  0 is N mod 7.

convert(N, "Pling") :-
  0 is N mod 3.

convert(N, "Plang") :-
  0 is N mod 5.

convert(N, "Plong") :-
  0 is N mod 7.

convert(N, S) :- 
  number_string(N, S).