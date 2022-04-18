% Plataforma
% Serie o Pelicula
% Genero
% Director
% Año de estreno
% 

% Pelicula-Netflix-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = netflix,duracionpeliculas(DURACION,DMIN,DMAX),peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR
,estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculasnetflix(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,_,_,_,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = netflix,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculasnetflix(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,SERVICIO,GENERO,_,_,_,_,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = netflix,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
generopeliculasnetflix(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.


% Serie-Netflix-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMINR,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = netflix,duracionseries(DURACION,DMIN,DMAX),seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR = ESTRENORMAXR
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(SERI,ESTUDIOPELICULAS),
generoseriesnetflix(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,_,_,_,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = netflix,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG)
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(SERI,ESTUDIOPELICULAS),
generoseriesnetflix(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.


recpeliculaoserie(TIPO,SERVICIO,GENERO,_,_,_,_,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = netflix,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
generoseriesnetflix(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

% Pelicula-amazon-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = amazon,duracionpeliculas(DURACION,DMIN,DMAX),peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR
,estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculasamazon(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,_,_,_,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = amazon,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculasamazon(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,SERVICIO,GENERO,_,_,_,_,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = amazon,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
generopeliculasamazon(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

% Serie-amazon-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMINR,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = amazon,duracionseries(DURACION,DMIN,DMAX),seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR = ESTRENORMAXR
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(SERI,ESTUDIOPELICULAS),
generoseriesamazon(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,_,_,_,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = amazon,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG)
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(SERI,ESTUDIOPELICULAS),
generoseriesamazon(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,SERVICIO,GENERO,_,_,_,_,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = amazon,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
generoseriesamazon(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

% -------------------------------------------------------

% Regla para consultar si hay peliculas o series para ese servicio

existenpeliculasservicio(S):-peliculastitulos(_,_,_,_,_,S,_),!.
existenseriesservicio(S):-seriestitulos(_,_,_,_,_,_,S,_),!.

% ------------------------------------------------------

% Regla para obtener los generos disponibles con base en si es pelicula o serie y el servicio

genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = netflix,TIPO = pelicula,generopeliculasnetflix(GENERO,_).
genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = netflix,TIPO = serie,generoseriesnetflix(GENERO,_).

genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = hbo,TIPO = serie,generoserieshbo(GENERO,_).
genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = hbo,TIPO = pelicula,generopeliculashbo(GENERO,_).

genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = amazon,TIPO = serie,generoseriesamazon(GENERO,_).
genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = amazon,TIPO = pelicula,generopeliculasamazon(GENERO,_).


% -------------------------------------------------------

% Regla para estudios de peliculas o series

consulestudiosp(TIPO,GENERO,SERVICIO,OESTUDIO,ESTUDIO):-TIPO =
pelicula,estudiocinematograficopelicula(OESTUDIO,ESTUDIO,_,GENEROS,SERVICIOS),member(GENERO,GENEROS),member(SERVICIO,SERVICIOS).

consulestudiosp(TIPO,GENERO,SERVICIO,OESTUDIO,ESTUDIO):-TIPO =
serie,estudiocinematograficoserie(OESTUDIO,ESTUDIO,_,GENEROS,SERVICIOS),member(GENERO,GENEROS),member(SERVICIO,SERVICIOS).

% -------------------------------------------------------
% Normal (1 hr - 2 hr), Media (2 hr - 3 hr), Larga (> 3 hr)

duracionpeliculas(normal,60,120).
duracionpeliculas(media,121,180).
duracionpeliculas(larga,181,240).

% -------------------------------------------------------
% Normal (45 m - 1hr), Media (1 hr - 1 hr 30m), Larga (1 hr 30m - 2 hr)

duracionseries(normal,45,60).
duracionseries(media,61,90).
duracionseries(larga,91,120).


% -------------------------------------------------------

peliculastitulos(conjuro,"El conjuro - saga",90,r,2013,netflix,"conjurosaga.jpg").
peliculastitulos(amigosint,"Amigos intocables",112,k12,2012,netflix,"amigosint.jpg").
peliculastitulos(gladiador,"Gladiador",195,b15,2000,netflix,"gladiador.jpg").
peliculastitulos(enemigoace,"Enemigo al acecho",131,r,2001,netflix,"enemigoacecho.jpg").
peliculastitulos(elpianista,"El pianista",150,c,2001,netflix,"elpianista.jpg").
peliculastitulos(eldiscursorey,"El discurso del rey",120,b,2011,netflix,"eldiscursorey.jpg").

peliculastitulos(misionrescate,"Mision de rescate",117,r,2020,netflix,"misionrescate.jpg").
peliculastitulos(sherlock,"Sherlock Holmes",128,pg13,2009,netflix,"sherlock.jpg").
peliculastitulos(elcodigodavinci,"El codigo Da Vinci",168,pg13,2006,netflix,"elcodigodavinci.jpg").
peliculastitulos(guerramundialz,"Guerra Mundial Z",116,pg13,2013,netflix,"guerramundialz.jpg").

peliculastitulos(nadie,"Nadie",92,b15,2021,amazon,"nadie.jpg").
peliculastitulos(venomcarnage,"Venon: Carnage liberado",97,b,2021,amazon,"venomcarnage.jpg").
peliculastitulos(moonfall,"Moonfall",120,b,2022,amazon,"moonfall.jpg").

% -------------------------------------------------------

seriestitulos(anatomiasegungray,"Anatomia segun Grey",44,18,b15,2005,netflix,"anatomiagrey.jpg").
seriestitulos(lupin,"Lupin",42,2,tv14,2021,netflix,"lupin.jpg").
seriestitulos(gotham,"Gotham",50,5,tmma,2019,netflix,"gotham.jpg").
seriestitulos(blacklist,"Black List",45,7,tv14,2020,netflix,"blacklist.jpg").
seriestitulos(you,"You",50,3,tvma,2021,netflix,"you.jpg").
seriestitulos(gooddoctor,"The Good Doctor",50,5,tvma,2021,amazon,"gooddoctor.jpg").
% ------------------------------------------------------



% Va ligada a genseriopel

generopeliculasnetflix(terror,[conjuro]).
generopeliculasnetflix(drama,[amigosint,enemigoace,elpianista,eldiscursorey]).
generopeliculasnetflix(comedia,[amigosint]).
generopeliculasnetflix(aventura,[gladiador,sherlock,guerramundialz]).
generopeliculasnetflix(accion,[gladiador,misionrescate,guerramundialz]).
generopeliculasnetflix(belico,[enemigoace,elpianista]).
generopeliculasnetflix(misterio,[elcodigodavinci]).


generoseriesnetflix(comedia,[lupin]).
generoseriesnetflix(drama,[gotham,blacklist,anatomiasegungray,you]).
generoseriesnetflix(accion,[gotham,blacklist,lupin]).
generoseriesnetflix(criminal,[you]).



generoseriesamazon(drama,[gooddoctor]).


generopeliculasamazon(accion,[venomcarnage,nadie]).
generopeliculasamazon(terror,[venomcarnage]).
generopeliculasamazon(comedia,[venomcarnage]).
generopeliculasamazon(aventura,[moonfall]).

% -------------------------------------------------------

% Estudios cinemátográficos

estudiocinematograficopelicula(studiobabelsberg,"Studio Babelsberg",[elpianista],[drama,belico],[netflix]).
estudiocinematograficopelicula(seesawfilms,"See Saw Films",[eldiscursorey],[drama],[netflix]).
estudiocinematograficopelicula(newlinecinema,"New Line Cinema",[conjuro],[terror],[netflix]).
estudiocinematograficopelicula(gaumontfilmcompany,"Gaumont Film Company",[amigosint],[drama,comedia,gladiador],[netflix]).
estudiocinematograficopelicula(universalpictures,"Universal Pictures",[gladiador],[accion,aventura],[netflix]).
estudiocinematograficopelicula(paramountpictures,"Paramount Pictures",[enemigoace],[belico],[netflix]).
estudiocinematograficopelicula(imagineentertainment,"Imagine Entertainment",[elcodigodavinci],[misterio],[netflix]).
estudiocinematograficopelicula(skydanceproductions,"Skydance Productions",[guerramundialz],[aventura,accion],[netflix]).
estudiocinematograficopelicula(agbo,"AGBO",[misionrescate],[accion],[netflix]).
estudiocinematograficopelicula(silverpictures,"Silver Pictures",[sherlock],[aventura],[netflix]).
estudiocinematograficopelicula(marvelentertainment,"Marvel Entertainment",[venomcarnage],[accion,terror,comedia],[amazon]).
estudiocinematograficopelicula(northproductions,"North Productions",[nadie],[accion],[amazon]).
estudiocinematograficopelicula(centropolisentertainment,"Centropolis Entertainment",[moonfall],[aventura],[amazon]).



estudiocinematograficoserie(abcsignature,"ABC Signature",[anatomiasegungray],[drama],[netflix]).
estudiocinematograficoserie(dcentertainment,"DC Entertainment",[gotham,blacklist],[drama,accion],[netflix]).
estudiocinematograficoserie(gaumonttelevision,"Gaumont Television",[lupin],[comedia,accion],[netflix]).
estudiocinematograficoserie(gaumonttelevision,"Gaumont Television",[you],[drama,criminal],[netflix]).
estudiocinematograficoserie(abdsignature,"ABC Signature",[gooddoctor],[drama],[amazon]).

% -------------------------------------------------------

actoresprinci(["Patrick Wilson","Vera Farmiga"],conjuro).
actoresprinci(["Omar Sy","Francois Cluzet"],amigosint).
actoresprinci(["Russell Crowe","Joaquin Pohoenix"],gladiador).
actoresprinci(["Jude Law","Erwin Konig"],enemigoace).
actoresprinci(["Adrien Brody","Ed Stoppard","Emilia Fox"],elpianista).
actoresprinci(["Colin Firth","Guy Pearce","Geoffrey Rush"],eldiscursorey).
actoresprinci(["Ellen Pompeo","Sandra Oh","Katherine Heigl"],anatomiasegungray).

actoresprinci(["Bob Odenkirk","Connie Nielsen"],nadie).
actoresprinci(["Tom Hardy","Woody Harrelson"],venomcarnage).
actoresprinci(["Halle Berry","Patrick Wilson"],moonfall).

actoresprinci(["Chris Hemsworth","Randeep Hooda"],misionrescate).
actoresprinci(["Robert Downey Jr","Jude Law"],sherlock).
actoresprinci(["Brad Pitt","Mirelle Enos"],guerramundialz).
actoresprinci(["Tom Hanks","Audrey Tautou"],elcodigodavinci).
actoresprinci(["Ben McKenzi","Donal Logue"],gotham).
actoresprinci(["Omar Sy","Ludvine Sagnier"],lupin).
actoresprinci(["James Spader","Megan Boone"],blacklist).
actoresprinci(["Penn Badgley","Victoria Pedretti"],you).
actoresprinci(["Freddie Highmore","Richard Schiff"],gooddoctor).

% Nuevas ---------------------------------------------------------------------------------


















