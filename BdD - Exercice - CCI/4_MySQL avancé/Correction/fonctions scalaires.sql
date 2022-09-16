select ceil(9.7);
select floor(9.7);
select round(9.755, 2);
select power(5, 2);
select SQRT(25);
select ABS(-5);
select mod(5, 2);

select STRCMP("chaine1", "chaine1");
select STRCMP("chaine1", "chaine2");
select SUBSTRING("MonTexte", 3, 3);
SELECT CONCAT("Une ", "Phrase ", " Décomposée");
select LOWER ("JE HURLE");
select UPPER("Je parle");

select curDate();
select curTime();
select now();
SELECT STR_TO_DATE("05,01,2021","%d,%m,%Y");
SELECT DATE_FORMAT(now(), '%W %M %Y');

select count(*) from roman;
select min(annee) from roman;
select max(annee) from roman;
select distinct(auteur) from roman;
select sum(annee) from roman;
select avg(annee) from roman;

select auteur, count(*) from roman
group by auteur;

select auteur, count(*) as nombre from roman
group by auteur
having nombre > 2;

