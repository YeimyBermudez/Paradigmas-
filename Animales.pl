adivinar:-
    write('Piensa un animal'),
    nl,
    adivinar(Animal),
      write('El animal que estas pensando es  '),
      write(Animal),
      write(?),
      nl,
      undo.
/*animales */
adivinar(leon)   :-leon, !.
adivinar(vaca)   :- vaca, !.
adivinar(cebra)     :- cebra, !.
adivinar(caballo)   :- caballo, !.
adivinar(jirafa)    :-jirafa, !.
adivinar(koala)   :-koala, !.
adivinar(oveja)     :-oveja,!.
adivinar(canguro)    :-canguro,!.
adivinar(conejo)     :-conejo,!.
adivinar(ardilla)     :-ardilla,!.
adivinar(ballena)     :-ballena,!.
adivinar(foca)       :-foca,!.
adivinar(raton)       :-raton,!.
adivinar(gato)       :-gato,!.
adivinar(buho)       :-buho,!.
adivinar(pinguino)   :- pinguino, !.
adivinar(avestruz)   :- avestruz, !.
adivinar(paloma)      :- paloma, !.
adivinar(tiburon)    :-tiburon,!.
adivinar(cocodrilo)   :-cocodrilo,!.
adivinar(sapo)   :-sapo,!.
adivinar(desconocido).

/* caracteristicas */
leon :- sangre_caliente, mamifero, carnivoro,cola,rapido, verify(tiene_melena).
vaca:- sangre_caliente, mamifero, herviboro,garras, verify(tiene_manchas).
cebra :- sangre_caliente, mamifero, herviboro, verify(tiene_rayas).
caballo :- sangre_caliente, mamifero, herviboro,garras, verify(tiene_cuatro_patas).
jirafa :- sangre_caliente, mamifero, herviboro, verify(tiene_cuello_largo).
oveja :- sangre_caliente, mamifero, herviboro,verify(tiene_lana).
koala :- sangre_caliente, mamifero, herviboro, verify(ojos_grandes).
canguro :- sangre_caliente, mamifero, herviboro,salta,verify(bolsa_estomago).
conejo:- sangre_caliente, mamifero, herviboro,verify(come_zanahoria).
ardilla:- sangre_caliente, mamifero, herviboro,roedor, verify(come_nueces).
ballena :- sangre_caliente, mamifero,branquias, marino, verify(es_un_cetaceo).
foca :- marino,sangre_caliente, mamifero,verify(tiene_bigotes).
raton:- sangre_caliente,roedor ,cola.
gato :- sangre_caliente,carnivoro, mamifero, cola, verify(maulla).
buho:- sangre_caliente,vuela,verify(vista_una_sola_direccion).
pinguino :- sangre_caliente,no_vuela , verify(come_peces).
avestruz :- sangre_caliente,no_vuela, verify(un_ave).
paloma:- sangre_caliente,vuela,verify(tiene_plumas).
tiburon:- marino, verify(enormes_colmillo).
cocodrilo:- reptil,verify(mandibula_grande).
sapo:- anfibio.


/* reglas */
rapido:-verify(rapido).
roedor:-verify(roedor).
salta:- verify(salta).
carnivoro :- verify(es_carnivoro).
sangre_caliente :- verify(sangre_caliente).
mamifero    :- verify(es_mamifero).
herviboro :- verify(es_herviboro).
anfibio :- verify(es_anfibio).
reptil:- verify(es_reptil).
branquias :- verify(tiene_branquias).
cola:- verify(tiene_cola).
marino :- verify(marino).
garras  :- verify(tiene_garras).
vuela :-verify(vuela).
no_vuela :- verify(no_vuela).

/* metodo */
ask(Question) :-
    write('El animal '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
