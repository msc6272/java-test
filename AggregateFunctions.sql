--select numero, nome from banco;
--select banco_numero, numero, nome from agencia;
--select numero, nome, email from cliente;
--select banco_numero, agencia_numero, cliente_numero from cliente_transacoes;

--select * from conta_corrente;

--select * from information_schema.columns where table_name = 'banco';

--select column_name, data_type from information_schema.columns where table_name = 'banco';


-- AVG
-- COUNT (having)
-- MAX
-- MIN
-- SUM

--select * from cliente_transacoes;

--select avg(valor) from cliente_transacoes;

--select count(numero) from cliente;

--select count(numero), email from cliente where email ILIKE '%gmail.com'; -- dá erro, pois precisa agrupar por email
--select count(numero), email from cliente where email ILIKE '%gmail.com' group by email;

--select max(numero) from cliente;

--select min(numero) from cliente;

--select max(valor) from cliente_transacoes;

--select min(valor) from cliente_transacoes;

--select max(valor), tipo_transacao_id from cliente_transacoes; -- dá ERRO pois precisa agrupar por tipo_transacao_id
--select max(valor), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id;

--select min(valor), tipo_transacao_id from cliente_transacoes group by tipo_transacao_id;

--select count(id), tipo_transacao_id from cliente_transacoes GROUP BY tipo_transacao_id having count(id)>150;

--SELECT sum(valor) from cliente_transacoes;

--SELECT sum(valor), tipo_transacao_id from cliente_transacoes group BY tipo_transacao_id;

--SELECT sum(valor), tipo_transacao_id from cliente_transacoes group BY tipo_transacao_id order by tipo_transacao_id;

--SELECT sum(valor), tipo_transacao_id from cliente_transacoes group BY tipo_transacao_id order by tipo_transacao_id DESC;
