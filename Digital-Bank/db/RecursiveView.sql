/*
create table if not exists funcionarios (
    id serial,
    nome varchar(50),
    gerente integer,
    primary key (id),
    foreign key (gerente) references funcionarios(id)
);

insert into funcionarios (nome, gerente) values ('Ancelmo', null);
insert into funcionarios (nome, gerente) values ('Beatriz', 1);
insert into funcionarios (nome, gerente) values ('Magno', 1);
insert into funcionarios (nome, gerente) values ('Cremilda', 2);
insert into funcionarios (nome, gerente) values ('Wagner', 4);
*/

/*
-- somente para exemplificar o próximo bloco de código
select id, nome, gerente from funcionarios where gerente is null --retorna somente Anselmo
union ALL
select id, nome, gerente from funcionarios where id = 999; -- não retorna ninguém
*/

/*
create or replace recursive view vw_func (id, gerente, funcionario) as (
    select id, gerente, nome
    from funcionarios
    where gerente is null

    union ALL
    
    select funcionarios.id, funcionarios.gerente, funcionarios.nome
    from funcionarios
    join vw_func on vw_func.id = funcionarios.gerente
);
*/

select id, gerente, funcionario
from vw_func;






