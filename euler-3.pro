euler3 :-
  primefactors(600851475143, L),
  max_list(L, N),
  writeln(N).

composite(N) :-
  N>2,
  N2 is floor(sqrt(N)),
  between(2, N2, A),
  0 =:= mod(N, A).

prime(N) :- not(composite(N)).

primefactors(1, [ ]).
primefactors(N, [F | Fs]) :- 
  between(2, N, F),
  0 =:= mod(N, F), 
  prime(F), !,
  N1 is N/F, 
  primefactors(N1, Fs).
