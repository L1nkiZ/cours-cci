-- Création d'utilisateur
CREATE USER 'philippe' identified by 'password';

select * from mysql.user;

GRANT SELECT, INSERT, UPDATE(annee, prix) ON roman.roman TO 'philippe';

show grants for 'philippe';

revoke insert on roman.roman from 'philippe';

show grants for 'philippe';

-- Création de rôle

CREATE ROLE 'lecture_seule';
GRANT SELECT ON * TO 'lecture_seule';

CREATE user 'bob' identified by 'bob';
GRANT 'lecture_seule' TO 'bob';

select current_role();

show grants for 'bob';

SHOW GRANTS FOR 'bob' USING 'lecture_seule';

SET DEFAULT ROLE 'lecture_seule' TO 'bob';
