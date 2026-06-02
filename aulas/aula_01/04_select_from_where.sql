
-- Exercícios

/* 
1 - Selecione todos os clientes com email cadastrado
2 - Selecione todas transações de 50 pontos(exatos)
3 - Selecione todos clientes com mais de 500 pontos
4 - Selecione produtos que contêm 'churn' no nome

*/

-- 1:
-- SELECT *
-- FROM clientes
-- WHERE flEmail = 1;

-- 2:
-- SELECT *
-- FROM clientes
-- WHERE qtdePontos = 50

-- 3:
-- SELECT *
-- FROM clientes
-- WHERE qtdePontos > 500;

-- 4:
SELECT *
FROM produtos
-- WHERE DescDescricaoProduto IN ('Botas que aumentam a velocidade de movimento.')
WHERE  DescDescricaoProduto LIKE 'Botas%'
LIMIT 10;