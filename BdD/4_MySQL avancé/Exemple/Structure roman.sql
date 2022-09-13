drop table if exists estDans;
drop table if exists serie;
drop table if exists roman;
drop table if exists lecteur;

create table if not exists roman
(
	code_ISBN VARCHAR(17) NOT NULL,
	nom varchar(200),
    auteur varchar(200) DEFAULT 'auteur inconnu',
    annee YEAR,
    prix DECIMAL(15,2),
    constraint pk_roman primary key(code_ISBN)
);

create table if not exists serie
(
	code_serie int NOT NULL AUTO_INCREMENT,
    nom_serie VARCHAR(200),
    constraint pk_serie primary key(code_serie)
);

create table if not exists estDans
(
	code_ISBN VARCHAR(17) NOT NULL,
    code_serie int,
    constraint pk_estDans primary key(code_ISBN, code_serie),
    foreign key(code_ISBN) REFERENCES roman(code_ISBN),
    foreign key(code_serie) REFERENCES serie(code_serie)
);

insert into serie(code_serie, nom_serie) VALUES (1, "Le Seigneur des anneaux");
insert into serie(code_serie, nom_serie) VALUES (2, "Harry Potter");
insert into serie(code_serie, nom_serie) VALUES (3, "Les robots");
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("1", "La Communauté de l'anneau", "JRR Tolkien", "1954", 5.65);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("2", "Les deux tours", "JRR Tolkien", "1954", 7.25);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("3", "Le retour du roi", "JRR Tolkien", "1955", 8.55);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("4", "Harry Potter à l'école des sorciers", "JK Rowling", "1998", 4.75);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("5", "Harry Potter et la chambre des secrets", "JK Rowling", "1999", 5.05);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("6", "Harry Potter et le Prisonnier d'Azkaban", "JK Rowling", "1999", 7.55);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("7", "Neverwhere", "Neil Gaiman", "1996", 8.45);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("8", "Stardust", "Neil Gaiman", "1999", 8.54);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("9", "Les robots", "Isaac Asimov", "1967", 3.25);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("10", "Un défilé de robots", "Isaac Asimov", "1967", 4.85);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("11", "Nous les robots", "Isaac Asimov", "1982", 5.25);
insert into roman (code_ISBN, nom, auteur, annee, prix) VALUES ("12", "Le robot qui rêvait", "Isaac Asimov", "1988", 8.25);
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

insert into roman (code_ISBN, nom, annee, prix) VALUES ("13", "L'incroyable Maurice", "1988", 5.00);

select * from roman;


create table if not exists lecteur
(
	code_lecteur int,
    nom_lecteur varchar(200),
    constraint pk_lecteur primary key(code_lecteur)
);

insert into lecteur (code_lecteur, nom_lecteur) VALUES (1, 'Bob');
insert into lecteur (code_lecteur, nom_lecteur) VALUES (2, 'Kim');
insert into lecteur (code_lecteur, nom_lecteur) VALUES (3, 'Mike');



