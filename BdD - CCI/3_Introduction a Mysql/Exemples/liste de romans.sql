drop table if exists estdans;
drop table if exists roman;
drop table if exists serie;

create table if not exists roman
(
	code_isbn varchar(17) not null,
	nom VARCHAR(200) not null,
    auteur VARCHAR(200),
    annee YEAR,
    constraint pk_roman PRIMARY KEY(code_isbn)
);

create table if not exists serie
(
	code_serie int not null auto_increment,
    nom_serie varchar(200),
    constraint pk_serie primary key(code_serie)
);

create table if not exists estdans
(
	code_isbn varchar(17) not null,
    code_serie int not null,
    constraint pk_est_dans primary key(code_isbn, code_serie),
    foreign key(code_isbn) references ROMAN(code_isbn) on delete cascade,
    foreign key(code_serie) references serie(code_serie)
);

insert into serie(code_serie, nom_serie) VALUES (1, "Le Seigneur des anneaux");
insert into serie(code_serie, nom_serie) VALUES (2, "Harry Potter");
insert into serie(code_serie, nom_serie) VALUES (3, "Les robots");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("1", "La Communauté de l'anneau", "JRR Tolkien", "1954");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("2", "Les deux tours", "JRR Tolkien", "1954");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("3", "Le retour du roi", "JRR Tolkien", "1955");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("4", "Harry Potter à l'école des sorciers", "JK Rowling", "1998");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("5", "Harry Potter et la chambre des secrets", "JK Rowling", "1999");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("6", "Harry Potter et le Prisonnier d'Azkaban", "JK Rowling", "1999");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("7", "Neverwhere", "Neil Gaiman", "1996");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("8", "Stardust", "Neil Gaiman", "1999");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("9", "Les robots", "Isaac Asimov", "1967");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("10", "Un défilé de robots", "Isaac Asimov", "1967");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("11", "Nous les robots", "Isaac Asimov", "1982");
insert into roman (code_ISBN, nom, auteur, annee) VALUES ("12", "Le robot qui rêvait", "Isaac Asimov", "1988");
insert into estDans(code_ISBN, code_serie) VALUES ("1", 1);
insert into estDans(code_ISBN, code_serie) VALUES ("2", 1);
insert into estDans(code_ISBN, code_serie) VALUES ("3", 1);
insert into estDans(code_ISBN, code_serie) VALUES ("4", 2);
insert into estDans(code_ISBN, code_serie) VALUES ("5", 2);
insert into estDans(code_ISBN, code_serie) VALUES ("6", 2);
insert into estDans(code_ISBN, code_serie) VALUES ("9", 3);
insert into estDans(code_ISBN, code_serie) VALUES ("10", 3);
insert into estDans(code_ISBN, code_serie) VALUES ("11", 3);
insert into estDans(code_ISBN, code_serie) VALUES ("12", 3);
