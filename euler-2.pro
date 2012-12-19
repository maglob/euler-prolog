euler2 :-
  numlist(2, 100, L),
  maplist(fib, L, F),
  include(pick, F, Rs),
  sumlist(Rs, R),
  writeln(R).

pick(N) :-
  between(0, 3999999, N),
  0 =:= mod(N, 2).

fib(N, F) :- fib(N, _, __, F).

fib(0, _, __, 0).
fib(1, _, 0, 1).
fib(2, 0, 1, 1).
fib(N, T1, T2, F) :- N>2, N1 is N-1, fib(N1, T, T1, T2), F is T1+T2, T is T2-T1.

