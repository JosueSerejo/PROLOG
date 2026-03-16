sexo(ana,feminino).
sexo(maria,feminino).
sexo(claudia,feminino).
sexo(pedro,masculino).
sexo(lucas,masculino).

pais(pedro,jonas,lurdes).
pais(ana,jonas,lurdes).
pais(maria,fabricio,amanda).
pais(claudia,jonas,lurdes).
pais(lucas,fabricio,amanda).

nao_sabe(pedro).
nao_sabe(ana).

irmaos(X,Y) :- 
    pais(X,Pai,Mae),
    pais(Y,Pai,Mae),
    X \= Y.

nao_sabe_parentesco(X,Y) :-
    irmaos(X,Y),
    nao_sabe(X),
    nao_sabe(Y).

