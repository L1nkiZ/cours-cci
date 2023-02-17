-- Utilisation des verrous

lock tables roman write, serie read;

select * from roman;
select * from lecteur;
select * from serie;

update roman set annee = 1933 where code_isbn=3;
update lecteur set nom_lecteur = 'Robert'  where code_lecteur=1;
update serie set nom_serie = 'Hunger Games' where code_serie=1;

unlock tables;