create table if NOT EXISTS teste (
    id serial primary key,
    nome varchar(50) not null,
    created_at timestamp not null default current_timestamp
);

drop table if exists teste;

create table if NOT EXISTS teste (
    cpf varchar(11) not null,
    nome varchar(50) not null,
    created_at timestamp not null default current_timestamp,
    primary key (cpf)
);

insert into teste (cpf, nome, created_at)
values ('22344566712', 'José Colméia', '2019-07-01 12:00:00');

--insert into teste (cpf, nome, created_at)
--values ('22344566712', 'José Colméia', '2019-07-01 12:00:00');

insert into teste (cpf, nome, created_at)
values ('22344566712', 'José Colméia', '2019-07-01 12:00:00') on conflict (cpf) do nothing;

select * from teste;

update teste set nome = 'Pedro Alvares' where cpf = '22344566712';

select * from teste;