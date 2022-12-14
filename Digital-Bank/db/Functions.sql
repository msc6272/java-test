/*
create or replace function func_somar(Integer, integer)
returns integer
security definer
returns null on null input
language sql
as $$
    select $1 + $2;
$$;

select func_somar(1,100);
*/

/*
create or replace function func_somar(Integer, integer)
returns integer
security definer
called on null input
language sql
as $$
    select $1 + $2;
$$;

select func_somar(1,null);
*/

--select coalesce(null, null, 'digital', 'daniel');

/*
create or replace function func_somar(Integer, integer)
returns integer
security definer
called on null input
language sql
as $$
    select coalesce($1, 100) + coalesce($2, 100);
$$;

select func_somar(1,null);
*/


---------------------------------------------------------


/*
create or replace function bancos_add(p_numero integer, p_nome varchar, p_ativo boolean)
returns integer
security invoker
language plpgsql
called on null input
as $$
declare variavel_id integer;
begin
    select into variavel_id p_numero
    from banco
    where numero = p_numero;

    return variavel_id;
end;
$$;

select bancos_add(1, 'Banco Novo', false);
select bancos_add(5432, 'Banco Novo', false);
*/

/*
create or replace function bancos_add(p_numero integer, p_nome varchar, p_ativo boolean)
returns integer
security invoker
language plpgsql
called on null input
as $$
declare variavel_id integer;
begin
    if p_numero is null or p_nome is null or p_ativo is null then
        return 0;
    end if;

    select into variavel_id numero
    from banco
    where numero = p_numero;

    if variavel_id is null then
        insert into banco(numero, nome, ativo)
            values (p_numero, p_nome, p_ativo);
    else
        return variavel_id;
    end if;

    select into variavel_id numero
    from banco
    where numero = p_numero;

    return variavel_id;
end;
$$;

select bancos_add(5432, 'Banco Novo', false);
select bancos_add(5433, 'Banco Novo em outra porta', true);

select numero, nome, ativo from banco where numero >= 5432;
*/

