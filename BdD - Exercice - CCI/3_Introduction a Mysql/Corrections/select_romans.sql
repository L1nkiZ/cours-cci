select * from roman
where annee < "1980";

select * from roman
where nom LIKE "Harry%";

select * from roman
where annee between "1990" and "2000";

select * from roman
where annee = "1954"
or annee = "1999";

select * from roman
where nom not LIKE "%robot%";