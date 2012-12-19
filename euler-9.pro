euler9 :-
  between(1, 999, A),
  between(A, 999, B),
  C is 1000 - A - B,
  pythagorean_triplet(A, B, C),
  Result is A*B*C,
  writeln(Result).

pythagorean_triplet(A, B, C) :- 
  A < B, B < C,
  0 =:= C*C - A*A - B*B.
