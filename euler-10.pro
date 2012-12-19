euler10 :-
  numlist(1, 2000000, C), 
  include(prime, C, R), 
  sumlist(R, N), 
  writeln(N).

euler10(N, 0) :- N<2, !.
euler10(N, S) :- N>1, prime(N), N1 is N-1, euler10(N1, S1), S is S1+N, !.
euler10(N, S) :- N>1, composite(N), N1 is N-1, euler10(N1, S), !.

composite(N) :- N<2.
composite(N) :-
  N>2,
  N2 is floor(sqrt(N)),
  between(2, N2, A),
  0 =:= mod(N, A).

prime(N) :- not(composite(N)).
