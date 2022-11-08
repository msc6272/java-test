--CREATE ROLE professores nocreatedb nocreaterole inherit nologin nobypassrls connection limit 10;

/* é melhor executar o comando '/du' no PSQL do que o comando abaixo */
--select * from pg_roles;
--alter role professores password '123';

--create role daniel login password '123';

--drop role daniel;
--create role daniel login password '123' in role professores; /* daniel é membro de professores */
--select * from pg_roles;

--drop role daniel;
--create role daniel login password '123' role professores; /* professores é membro de daniel */
--select * from pg_roles;


/* Outras possibilidades */
--create role daniel login connection limit 1 password '123' in role professores;
--create role daniel login connection limit 1 password '123' role professores;
--create role daniel login connection limit 1 password '123';
--GRANT professores to daniel;
--revoke professores from daniel;
--alter role;