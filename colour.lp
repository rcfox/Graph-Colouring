#const n = 3.

1 { colour(X,0..n-1) } 1 :- node(X).

:- edge(X,Y), colour(X,C), colour(Y,C).
