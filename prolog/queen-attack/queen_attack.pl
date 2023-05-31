valid(Value) :- 
	Value > 0,
	Value < 8.

create((DimX, DimY)) :-
	valid(DimX),
	valid(DimY).

attack((FromX, FromY), (ToX, ToY)) :-
	(ToX - FromX \= 0, ToY - FromY =:= 0);
	(ToY - FromY \= 0, ToX - FromX =:= 0);
	abs(ToX - FromX) =:= abs(ToY - FromY).