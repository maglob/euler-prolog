euler4 :-
  findall(X, euler4(X), List),
  max_list(List, R),
  write(R).

euler4(N) :-
  between(100, 999, A),
  between(A, 999, B),
  N is A * B,
  palindrome(N).

palindrome(N) :-
  number_codes(N, As),
  reverse(As, Bs),
  As == Bs.
