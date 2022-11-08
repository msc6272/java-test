/*
drop role daniel;
create table teste (nome varchar);
grant all on table teste to professores;
create role daniel login password '123';
select nome from teste;
*/

/*
drop role daniel;
create role daniel login inherit password '123' in role professores;
select nome from teste;
*/

revoke professores from daniel;
select nome from teste;

