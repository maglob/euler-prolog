range(0, [ ]).
range(N, [L|Ls]) :- N>0, L=N, N1 is N-1, range(N1, Ls).

