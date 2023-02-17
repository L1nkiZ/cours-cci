-- Exemple de transaction implicite 
set autocommit=0;

update roman
set annee = 1955
where code_isbn = 1;

rollback;

select * from roman;

-- Exemple de transaction explicite
set autocommit=1;

START Transaction;

update roman
set annee = 1957
where code_isbn = 1;

rollback;

START Transaction;

update roman
set annee = 2030
where code_isbn = 2;

commit;

select * from roman;

-- Exemple de jalon

START transaction;

update roman
set annee = 1985
where code_isbn = 1;

savepoint roman1_1885;

update roman
set annee = 1985
where code_isbn = 2;

rollback to savepoint roman1_1885;

update roman
set annee = 1985
where code_isbn = 3;

commit;

select * from roman;






