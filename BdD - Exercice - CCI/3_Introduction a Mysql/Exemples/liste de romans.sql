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
