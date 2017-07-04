# Catalan numbers benchmark

All the programs take an argument n and print all the combinations of
n balanced pairs of parentheses, one expression per line. This benchmark
is heavy on recursion and string manipulation.

These were run on an otherwise quiescent MacBook Pro with 2.3 GHz Intel Core
i7, while redirecting output to `/dev/null`, under `time`, with an argument
of 15.

The results are:

* C (clang -O3) — 1.286s
* PyPy — 3.980s
* Julia 0.5 — 10.118s
* Python 3 — 16.597s
* Python 2 — 16.944s
* Perl — 19.282s
* JRuby — 23.144s
* Ruby — 23.788s
* JavaScript (node) — 63.455s

The `real` times are reported. The results are for entertainment purposes
and not to bash your choice of language or promote mine.

I didn't expect PyPy to do so well.