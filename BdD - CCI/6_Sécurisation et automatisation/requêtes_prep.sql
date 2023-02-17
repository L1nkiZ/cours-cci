-- Utilisation des variables

SET @tva = 5.5;

select nom, prix, prix * @tva / 100 as TVA, prix * (100 - @tva) /100 as HT  from roman;

-- Utilisation des requêtes préparées

PREPARE select_roman FROM 'SELECT * FROM ROMAN WHERE annee = ?';

SET @monAnnee = 2030;

EXECUTE select_roman USING @monAnnee;

DEALLOCATE PREPARE select_roman;

-- Création de lecteur

PREPARE insert_lecteur FROM 'INSERT INTO LECTEUR (code_lecteur, nom_lecteur) VALUES (? , ?)';

SET @id = 4;
SET @nom = 'Marius';

EXECUTE insert_lecteur USING @id, @nom;

DEALLOCATE PREPARE insert_lecteur;

select * from lecteur;