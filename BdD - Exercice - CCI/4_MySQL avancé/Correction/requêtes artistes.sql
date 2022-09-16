-- Afficher toutes les chansons de l'album 'Inhuman Rampage'
SELECT * from chanson
INNER JOIN album on chanson.id_album = album.id_album
WHERE nom_album = 'Inhuman Rampage';

-- Afficher le nom de tous les guitaristes 
Select distinct(artiste.nom_artiste) from artiste
INNER JOIN PARTICIPE ON artiste.id_artiste = PARTICIPE.id_artiste
INNER JOIN ROLEART ON ROLEART.id_role = PARTICIPE.id_role
WHERE ROLEART.des_role = 'Guitare';

-- Afficher les artistes nés avant 1980
select *FROM artiste
WHERE naissance_artiste < STR_TO_DATE('01-01-1980','%d-%m-%Y');

-- Afficher le nombre d'artistes
select count(*) from artiste;

-- Afficher le nombre d'artistes par role
Select des_role, count(distinct(artiste.nom_artiste)) from roleart
inner join participe on ROLEART.id_role = PARTICIPE.id_role
inner join artiste ON artiste.id_artiste = PARTICIPE.id_artiste
group by des_role;

-- Afficher le nombre de participation d'artiste a des chansons trié
Select artiste.nom_artiste, count(*) as c from chanson
inner join participe on chanson.id_chanson = PARTICIPE.id_chanson
inner join artiste ON artiste.id_artiste = PARTICIPE.id_artiste
group by artiste.nom_artiste
order by c;