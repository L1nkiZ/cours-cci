CREATE INDEX i_roman_annee
ON roman (annee);

ALTER TABLE roman
drop index i_roman_annee;

ALTER TABLE roman
ADD INDEX i_roman_annee (annee);

CREATE TABLE ANIMAL
(
	id int not null auto_increment,
    Espece VARCHAR(100),
    Nom VARCHAR(200),
    Sexe CHAR(1),
    Proprietaire VARCHAR(200),
    CONSTRAINT pk_animal PRIMARY KEY (id)
);

insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Chat", "Garfiled", "M", "John Arbuckle");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Chien", "Ody", "M", "John Arbuckle");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Souris", "Minnie", "F", "Walt Disney");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Poisson", "Doris", "F", "Personne");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Serpent", "Ska", "M", "Personne");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Chat", "Isidor", "M", "Personne");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Serpent", "Beau A", "M", "Personne");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Chien", "Cubitus", "M", "Sémaphore");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Souris", "Squick", "F", "Squack");
insert into animal(Espece, Nom, Sexe, Proprietaire) VALUES ("Chat", "Duchesse", "F", "Personne");

select * from animal;

create index i_animal
on animal (Nom, Espece, Sexe);
