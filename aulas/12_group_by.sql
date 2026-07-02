-- SELECT IdProduto,
--         count(*)
-- FROM transacao_produto

-- GROUP BY IdProduto

-- Qual foi o cliente que mais juntou pontos em Julho

SELECT IdCliente,
    sum(QtdePontos),
    count(IdTransacao) AS qtdTransacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente
ORDER BY sum(QtdePontos) DESC