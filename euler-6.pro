euler6 :-
  sum_square(100, S1),
  square_sum(100, S2),
  N is S1 - S2,
  writeln(N).

sum_square(N, S) :- S is (N*(N+1)/2) ^ 2.

square_sum(0, 0).
square_sum(N, S) :- N>0, N1 is N-1, square_sum(N1, S1), N2 is N*N, S is S1+N2.
