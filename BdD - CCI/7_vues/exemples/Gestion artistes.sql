drop table if exists PARTICIPE;
drop table if exists CHANSON;
drop table if exists ARTISTE;
drop table if exists ALBUM;
drop table if exists ROLEART;

create table if not exists ALBUM
(
	id_album int NOT NULL AUTO_INCREMENT,
    nom_album VARCHAR(200),
    constraint pk_album primary key(id_album)
);

create table if not exists ROLEART
(
	id_role int NOT NULL AUTO_INCREMENT,
    des_role VARCHAR(200),
    constraint pk_roleart primary key(id_role)
);

create table if not exists ARTISTE
(
	id_artiste int NOT NULL AUTO_INCREMENT,
    nom_artiste VARCHAR(200),
    prenom_artiste VARCHAR(200),
    naissance_artiste date,
    constraint pk_artiste primary key(id_artiste)
);

create table if not exists CHANSON
(
	id_chanson int NOT NULL AUTO_INCREMENT,
    nom_chanson VARCHAR(200),
    annee_chanson YEAR,
    id_album int,
    constraint pk_chanson primary key(id_chanson),
    foreign key(id_album) REFERENCES ALBUM(id_album)
);

create table if not exists PARTICIPE
(
	id_artiste int,
    id_chanson int,
    id_role int,
    constraint pk_participe primary key(id_artiste, id_chanson, id_role),
    foreign key(id_artiste) REFERENCES ARTISTE(id_artiste),
    foreign key(id_chanson) REFERENCES CHANSON(id_chanson),
    foreign key(id_role) REFERENCES ROLEART(id_role)
);

INSERT INTO ROLEART (id_role, des_role) VALUES (1, "Chanteur");
INSERT INTO ROLEART (id_role, des_role) VALUES (2, "Guitare");
INSERT INTO ROLEART (id_role, des_role) VALUES (3, "Basse");
INSERT INTO ROLEART (id_role, des_role) VALUES (4, "Batterie");
INSERT INTO ROLEART (id_role, des_role) VALUES (5, "Clavier");
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (1, "Theart", "ZP", STR_TO_DATE('22-01-1975','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (2, "Hudson", "Marc", STR_TO_DATE('11-02-1987','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (3, "Li", "Herman", STR_TO_DATE('03-10-1976','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (4, "Totman", "Sam", STR_TO_DATE('26-04-1979','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (5, "Harper", "Diccon", STR_TO_DATE('01-03-1972','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (6, "Lambert", "Adrian", STR_TO_DATE('26-04-1972','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (7, "Leclerc", "Frédéric", STR_TO_DATE('23-06-1978','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (8, "Mackintosh", "Dave", STR_TO_DATE('15-09-1970','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (9, "Anzalone", "Gee", STR_TO_DATE('01-06-1985','%d-%m-%Y'));
INSERT INTO ARTISTE (id_artiste, nom_artiste, prenom_artiste, naissance_artiste) VALUES (10, "Proujanov", "Vadym", STR_TO_DATE('18-06-1982','%d-%m-%Y'));
INSERT INTO ALBUM (id_album, nom_album) VALUES (1, "Inhuman Rampage");
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (1, "Through the Fire and Flames", "2006", 1);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (2, "Revolution Deathsquad", "2006", 1);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (3, "Storming the Burning Fields", "2006", 1);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (4, "Operation Ground and Pound", "2006", 1);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (5, "Body Breakdown", "2006", 1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,1,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,1,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,1,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,1,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,1,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,1,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,2,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,2,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,2,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,2,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,2,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,2,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,3,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,3,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,3,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,3,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,3,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,3,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,4,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,4,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,4,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,4,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,4,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,4,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,5,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,5,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,5,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,5,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,5,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,5,5);
INSERT INTO ALBUM (id_album, nom_album) VALUES (2, "Extrême Power Metal");
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (6, "Highway to Oblivion", "2019", 2);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (7, "The last Dragonborn", "2019", 2);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (8, "Strangers", "2019", 2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (2,6,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,6,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,6,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (7,6,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (9,6,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,6,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (2,7,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,7,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,7,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (7,7,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (9,7,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,7,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (2,8,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,8,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,8,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (7,8,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (9,8,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,8,5);
INSERT INTO ALBUM (id_album, nom_album) VALUES (3, "Valley of the Damned");
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (9, "Valley of the damned", "2003", 3);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (10, "Black Fire", "2003", 3);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (11, "Black winter nights", "2003", 3);
Insert INTO CHANSON (id_chanson, nom_chanson, annee_chanson, id_album) VALUES (12, "Starfire", "2003", 3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,9,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,9,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,9,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,9,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,9,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,9,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,10,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,10,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,10,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,10,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,10,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,10,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,11,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,11,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,11,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,11,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,11,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,11,5);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (1,12,1);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (3,12,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (4,12,2);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (6,12,3);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (8,12,4);
INSERT INTO PARTICIPE (id_artiste, id_chanson, id_role) VALUES (10,12,5);


select * from chanson;


