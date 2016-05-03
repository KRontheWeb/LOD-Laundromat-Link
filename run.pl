:- use_module(library(lodapi/lodapi_deref)).
:- use_module(library(rdf/rdf_prefix), []).
:- use_module(library(semweb/rdf11)).

id(X0) :-
  rdf_global_id(X0, X),
  flag(id, _, 1),
  format("Looking for identities of ~a:~n", [X]),
  ldf_id(X, Y),
  flag(id, N, N + 1),
  format("    ~D. ~a~n", [N,Y]),
  fail.
id(_) :-
  flag(id, N0, N0),
  N is N0 - 1,
  format("Done!  Found ~D identities.~n", [N]),
  halt.
