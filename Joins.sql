--select numero, nome from banco;
--select banco_numero, numero, nome from agencia;
--select numero, nome from cliente;
--select banco_numero, agencia_numero, numero, digito, cliente_numero from conta_corrente;
--select id, nome from tipo_transacao;
--select banco_numero agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, valor from cliente_transacoes;

--select count(1) from banco; -- 151
--select count(1) from agencia; -- 296

/*
select banco.numero, banco.nome, agencia.numero, agencia.nome
from banco
join agencia on agencia.banco_numero = banco.numero;
*/

/*
SELECT count(banco.numero)
from banco
join agencia on agencia.banco_numero = banco.numero;
*/

/*
SELECT count(distinct banco.numero)
from banco
join agencia on agencia.banco_numero = banco.numero;
*/

/*
SELECT banco.numero
from banco
join agencia on agencia.banco_numero = banco.numero
group by banco.numero;
*/

/*
select banco.numero, banco.nome, agencia.numero, agencia.nome
from banco
left join agencia on agencia.banco_numero = banco.numero;
*/

/*
select agencia.numero, agencia.nome, banco.numero, banco.nome
from agencia
right join banco on banco.numero = agencia.banco_numero;
*/

/*
select agencia.numero, agencia.nome, banco.numero, banco.nome
from agencia
left join banco on banco.numero = agencia.banco_numero;
*/

/*
select banco.numero, banco.nome, agencia.numero, agencia.nome
from banco
full join agencia on agencia.banco_numero = banco.numero;
*/

/*
create TABLE if NOT EXISTS teste_a (id serial primary key, valor varchar(10));
create TABLE if NOT EXISTS teste_b (id serial primary key, valor varchar(10));
insert into teste_a (valor) values ('teste1');
insert into teste_a (valor) values ('teste2');
insert into teste_a (valor) values ('teste3');
insert into teste_a (valor) values ('teste4');
insert into teste_b (valor) values ('testea');
insert into teste_b (valor) values ('testeb');
insert into teste_b (valor) values ('testec');
insert into teste_b (valor) values ('tested');
select tbla.valor, tblb.valor
from teste_a tbla
cross join teste_b tblb;
drop table if EXISTS teste_a;
drop table if EXISTS teste_b;
*/

/*
-- Esta última query não está funcionando bem com o campo 'agencia.nome'; não consegui identificar o motivo

select banco.nome, agencia.nome, conta_corrente.numero, conta_corrente.digito, cliente.nome
from banco 
join agencia on agencia.banco_numero = banco.numero
join conta_corrente
    -- on conta_corrente.banco_numero = agencia.banco_numero
    on conta_corrente.banco_numero = banco.numero
    and conta_corrente.agencia_numero = agencia.numero
join cliente
    on cliente.numero = conta_corrente.cliente_numero;
*/



