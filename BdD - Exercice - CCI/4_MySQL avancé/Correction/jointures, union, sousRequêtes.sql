select * from roman INNER JOIN estdans on roman.code_ISBN = estdans.code_ISBN;

select * from roman 
INNER JOIN estdans on roman.code_ISBN = estdans.code_ISBN
INNER JOIN serie on estdans.code_serie = estdans.code_serie
WHERE serie.nom_serie LIKE "Le Seigneur des anneaux";

drop table if exists lecteur;
create table if not exists lecteur
(
	code_lecteur int NOT NULL AUTO_INCREMENT,
    nom_lecteur VARCHAR(200),
    constraint pk_lecteur primary key(code_lecteur)
);

insert into lecteur (nom_lecteur) VALUES ("Martin");
insert into lecteur (nom_lecteur) VALUES ("Jeanne");
insert into lecteur (nom_lecteur) VALUES ("Robert");
commit;

select * from lecteur cross join roman;

select * from roman left JOIN estdans on roman.code_ISBN = estdans.code_ISBN;
select * from roman NATURAL JOIN estdans;
select * from roman where auteur in ('JK Rowling', 'JRR Tolkien');
select * from roman where annee in ('1954', '1955', '1999');

select * from roman 
where code_isbn not in (select code_isbn from estdans);

select * from roman as A
where exists (select code_isbn from estdans where estdans.code_ISBN = A.code_ISBN);

select * from roman where auteur LIKE "Isaac Asimov"
UNION
select * from roman where annee = "1999";

select * from roman 
where auteur LIKE "JK Rowling"
and code_isbn in (select code_isbn from roman where annee = "1999");

select * from roman 
where auteur LIKE "JK Rowling"
and code_isbn not in (select code_isbn from roman where annee = "1999");

