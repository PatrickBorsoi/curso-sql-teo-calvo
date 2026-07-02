-- Quantos pontos foram gerado no mes de junho
-- SELECT SUM(QtdePontos)
-- FROM transacoes
-- WHERE Dtcriacao >= '2025-07-01'
-- AND DtCriacao < '2025-08-01'
-- AND QtdePontos > 0

-- Soma dos pontos positivo e negativos
SELECT 
    sum(QtdePontos),
    sum(CASE 
        WHEN QtdePontos > 0 THEN QtdePontos
    END) AS QtdePontosPositivos,

    sum(CASE 
        WHEN QtdePontos < 0 THEN QtdePontos
    END)  AS QtdePontosNegativos,


-- Se utilizar um ELSE 0 ele acaba contando os que tem 0 é isso pode gerar um dado errado
-- O COUNT não conta dados nullos
    count(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdeTransacoesNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos