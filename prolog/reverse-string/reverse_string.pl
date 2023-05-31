string_reverse(Text, ReversedText) :-
  string_chars(Text, Chars),
  reverse(Chars, ReversedChars),
  string_chars(ReversedText, ReversedChars).