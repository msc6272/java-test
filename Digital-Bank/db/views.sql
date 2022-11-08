--select numero, nome, ativo from banco;

/*
create or replace view vw_bancos as (
    select numero, nome, ativo
    from banco
);
*/

--select numero, nome, ativo from vw_bancos;

/*
create or replace view vw_bancos_2 (banco_numero, banco_nome, banco_ativo) as (
    select numero, nome, ativo
    from banco
);
*/

--select banco_numero, banco_nome, banco_ativo from vw_bancos_2;

--insert into vw_bancos_2 (banco_numero, banco_nome, banco_ativo) values (51, 'Banco Boa Ideia', TRUE);

--select banco_numero, banco_nome, banco_ativo from vw_bancos_2 where banco_numero = 51;

--select numero, nome, ativo from banco where numero = 51;

--update vw_bancos_2 set banco_ativo = FALSE where banco_numero = 51;

--delete from vw_bancos_2 where banco_numero = 51;



/*
-- Teste do caráter temporário da VIEW
create or replace temporary view vw_agencia as (
    select nome from agencia
);
-- O SELECT abaixo deveria ser feito em outra sessão, para demonstrar o caráter temporário da VIEW
select nome from agencia;
*/


/*
create or replace view vw_bancos_ativos as (
    select numero, nome, ativo
    from banco
    where ativo is TRUE
) with local check option;
-- O INSERT abaixo viola a verificação da VIEW
insert into vw_bancos_ativos (numero, nome, ativo) values (51, 'Banco Boa Ideia', FALSE);
*/

/*
create or replace view vw_bancos_com_a as (
    select numero, nome, ativo
    from vw_bancos_ativos
    where nome ilike 'a%'
) with local check option;
-- O INSERT abaixo viola a verificação da própria VIEW
insert into vw_bancos_com_a (numero, nome, ativo) values (333, 'Beta Omega', true);
-- O INSERT abaixo não viola a verificação da própria VIEW
insert into vw_bancos_com_a (numero, nome, ativo) values (333, 'Alfa Omega', true);
-- O INSERT abaixo viola a verificação da VIEW anterior (vw_bancos_ativos)
insert into vw_bancos_com_a (numero, nome, ativo) values (331, 'Alfa Gama', false);
*/
/*
-- Tirando a verificação da VIEW, podemos inserir o registro
create or replace view vw_bancos_ativos as (
    select numero, nome, ativo
    from banco
    where ativo is TRUE
);
insert into vw_bancos_com_a (numero, nome, ativo) values (331, 'Alfa Gama', false);
*/

/*
-- Mudando a verificação para CASCADED
create or replace view vw_bancos_com_a as (
    select numero, nome, ativo
    from vw_bancos_ativos
    where nome ilike 'a%'
) with cascaded check option;
-- O INSERT abaixo viola a verificação da VIEW (vw_bancos_ativos)
insert into vw_bancos_com_a (numero, nome, ativo) values (332, 'Alfa Gama Beta', false);
*/