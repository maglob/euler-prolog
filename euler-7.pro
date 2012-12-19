% :- dynamic (prime)/1.

euler7 :-
  prime_list(10001, [P|_]),
  writeln(P).

composite(N) :- N<2.
composite(N) :-
  N>2,
  N2 is floor(sqrt(N)),
  between(2, N2, A),
  0 =:= mod(N, A).

prime(N) :- not(composite(N)).

prime_succ(A, B) :-
  A1 is A + 1,
  A2 is 2*A,
  between(A1, A2, B),
  between(A1, B, N),
  prime(N),
  !.

prime_list(1, [2]).
prime_list(N, [P,P1|Ps]) :- N>1, N1 is N-1, prime_list(N1, [P1|Ps]), prime_succ(P1, P).

% lemma(P) :- P, asserta((P :- !)).
