euler5 :-
  euler5(N),
  writeln(N).

euler5(N) :-
  between(20, 999999999, N2),
  N is N2 * 20,
  0 =:= mod(N, 20),   % 2*2*5
  0 =:= mod(N, 19),   % 19
  0 =:= mod(N, 18),   % 2*3*3
  0 =:= mod(N, 17),   % 17
  0 =:= mod(N, 16),   % 2*2*2*2
  0 =:= mod(N, 14),   % 2*7
  0 =:= mod(N, 13),   % 13
  0 =:= mod(N, 11),   % 11
  %\+ nondiv(N),
  !.

nondiv(N) :-
  between(2, 20, D),
  0 =\= mod(N, D).
