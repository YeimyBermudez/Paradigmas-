hanoi :-
    h(3,"A","B","C").
h(0,_P_,_S_,_T_).
h(N,P,S,T) :-
    N>0,
    M is N-1,
    h(M,P,S,T),
    write(N),
    write("  de torre "),
    write(P),
    write(" a torre "),
    write(S),
    nl,
    h(M,T,S,P).

?- hanoi.
