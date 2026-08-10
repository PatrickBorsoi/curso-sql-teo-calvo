WITH cliente_dia AS (
    SELECT DISTINCT IdCliente,
        substr(DtCriacao,1,10) AS dtDia 
    FROM transacoes

    WHERE substr(dtCriacao,1,4) = '2025'

    ORDER BY IdCliente, dtDia
),

tb_lag AS (
SELECT *,
    LAG(dtDia) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS lagDia
FROM cliente_dia
)
SELECT *,  
        julianday(dtDia) - julianday(lagDia) AS dtDIFF

FROM tb_lag