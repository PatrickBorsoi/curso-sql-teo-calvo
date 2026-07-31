-- Dia 2025-08-25 ao dia 2025-08-29

-- Quem iniciou o curso no primeiro dia, em médiia assistiu quantas aulas?
-- Quem participou da primeira aula
WITH tb_prim_dia AS(

    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-25'
),
-- Quem participou do curso inteiro
tb_dias_curso AS (
    SELECT DISTINCT
            IdCliente,
            substr(DtCriacao, 1,10) AS presenteDia
    FROM transacoes
    WHERE dtCriacao >= '2025-08-25'
    AND dtCriacao < '2025-08-30'
    ORDER BY IdCliente, presenteDia
),
-- contando quantas vezes quem participou do primeiro dia e voltou
tb_cliente_dias AS (
    SELECT t1.IdCliente,
        count(t2.presenteDia) as qtdeDias
    FROM tb_prim_dia AS t1

    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente

    GROUP BY t1.IdCliente
)
-- calcula a média
SELECT avg(qtdeDias) FROM tb_cliente_dias