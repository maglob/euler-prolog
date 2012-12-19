euler1 :- 
  setof(X, euler1_p(X), L),   
  sumlist(L, R),
  writeln(R).

euler1_p(N) :- 
  between(1, 999, N), 
  (0 =:= N mod 5 ; 0 =:= N mod 3).


% Alternate version
euler1b :- 
  euler1b(1, L),
  sumlist(L, X),
  writeln(X).

euler1b(N, [N|Ls]) :-
  N < 1000,
  euler1_p(N), !,
  N1 is N + 1,
  euler1b(N1, Ls).

euler1b(N, Ls) :-
  N < 1000,
  not(euler1_p(N)), !,
  N1 is N + 1,
  euler1b(N1, Ls).

euler1b(N, [ ]) :- N = 1000.
