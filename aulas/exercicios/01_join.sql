

-- Qual a categoria tem mais produtos vendidos?

-- SELECT 
-- p.DescCategoriaProduto,
-- COUNT(distinct tp.IdTransacao) AS QTD_Transacoes

-- FROM transacao_produto as tp
-- LEFT JOIN produtos as p 
-- ON tp.IdProduto = p.IdProduto
-- GROUP BY p.DescCategoriaProduto
-- ORDER BY QTD_Transacoes DESC

-- Em 2024, quantas transaçoes de Lovers tivemos?

SELECT COUNT( distinct tp.IdTransacao)

FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

LEFT JOIN transacoes AS t
ON tp.IdTransacao =  t.IdTransacao

WHERE p.DescCategoriaProduto = 'lovers' 
AND t.DtCriacao >= '2024-01-01'
AND t.DtCriacao < '2025-01-01'