
is_unique(List) :-
  msort(List, Sorted),
  sort(List, Sorted).

condition(Char) :-
  char_type(Char, alnum).

isogram(Phrase) :-
  string_lower(Phrase, Lower),
  string_chars(Lower, Chars),
  include(condition, Chars, Sorted),
  is_unique(Sorted).