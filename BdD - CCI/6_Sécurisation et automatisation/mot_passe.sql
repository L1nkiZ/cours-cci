-- Mot de passe crypté

drop table if exists utilisateur;

CREATE TABLE if not exists utilisateur (
	login varchar(25),
    pass varchar(512),
    constraint pk_utilisateur primary key(login)
);

insert into utilisateur (login, pass) VALUES ('bob', 'pass');

select * from utilisateur;

insert into utilisateur (login, pass) VALUES ('mike', md5('pass'));
insert into utilisateur (login, pass) VALUES ('alison', sha('pass'));
insert into utilisateur (login, pass) VALUES ('alison', sha2('pass', 512));

select * from utilisateur;

