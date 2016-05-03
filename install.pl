:- use_module(library(ansi_term)).
:- use_module(library(apply)).
:- use_module(library(filesex)).
:- use_module(library(lists)).
:- use_module(library(option)).
:- use_module(library(prolog_pack)).
:- use_module(library(uri)).

:- initialization(install).

:- dynamic
    name/1,
    requires/1.





%! install is det.

install:-
  source_file(install, File),
  file_directory_name(File, Dir),
  install(Dir),
  halt.


%! install(+Dir) is det.

install(Dir) :-
  directory_file_path(Dir, 'pack.pl', PackFile),
  access_file(PackFile, read),
  ensure_loaded(PackFile),
  name(PackName),
  findall(LibName, requires(LibName), LibNames),
  unload_file(PackFile),
  maplist(install_requirement, LibNames), !,
  ansi_format([fg(green)], "~a was successfully installed.~n", [PackName]).
install(_) :-
  ansi_format([fg(red)], "Installation failed.~n", []).


%! install_requirement(+Name) is det.

% The library already installed.
install_requirement(Name) :-
  name_dir(Name, Dir),
  exists_directory(Dir), !.
% Install through the Prolog Pack system.
install_requirement(Name) :-
  prolog_pack:query_pack_server(search(Name), Result, []),
  Result = true([pack(Name,_,_,_,_)]), !,
  pack_install(Name).
% Install through Github.
install_requirement(Name) :-
  atomic_list_concat(['',wouterbeek,Name], /, Path),
  uri_components(Uri, uri_components(https,'github.com',Path,_,_)),
  name_dir(Name, Dir),
  prolog_pack:run_process(path(git), [clone,Uri,Dir], []),
  install(Dir), !.
% Oops!
install_requirement(_, Name) :-
  ansi_format([fg(red)], "Installation of library ~a failed.~n", [Name]).






% HELPERS %

%! append_directories(+Dir1, +Dir2, -Dir3) is det.

append_directories(Dir1, Dir2, Dir3) :-
  atomic_list_concat(Subdirs1, /, Dir1),
  atomic_list_concat(Subdirs2, /, Dir2),
  append(Subdirs1, Subdirs2, Subdirs3),
  atomic_list_concat(Subdirs3, /, Dir3).



%! name_dir(+Name, -Dir) is det.

name_dir(Name, Dir) :-
  absolute_file_name(pack(.), Dir0, [file_type(directory)]),
  directory_file_path(Dir0, Name, Dir).
