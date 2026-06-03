-- 1 - Lista de transações com apenas 1 ponto;
-- SELECT *
-- FROM  transacoes
-- WHERE QtdePontos = 1;

-- 2 - Lista de pedidos realizados no fim de semana;

-- SELECT idCliente,
--         DtCriacao,
--         strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana
-- FROM clientes
-- WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('6','0')

-- 3 - Lista de clientes com 0 (zero) pontos;
-- SELECT idCliente, qtdePontos
-- FROM clientes
-- WHERE qtdePontos = 0;

-- 4 - Lista de clientes com 100 a 200 pontos (inclusive ambos);

-- SELECT idCliente, qtdePontos
-- FROM clientes
-- WHERE qtdePontos >= 100 AND qtdePontos <= 200;

-- 5 - Lista de produtos com nome que começa com “Chapéu”;

-- SELECT *
-- FROM produtos
-- WHERE DescNomeProduto LIKE 'Chapéu%';

-- 6 - Lista de produtos com nome que termina com “Gelo”;
-- SELECT *
-- FROM produtos
-- WHERE DescNomeProduto LIKE '%Gelo'

-- 7 - Lista de produtos que são “chapéu”;
-- SELECT *
-- FROM produtos
-- WHERE DescCategoriaProduto = 'chapeu'

-- 8 - Lista de transações com o produto “Resgatar Ponei”;

-- 9 - Listar todas as transações adicionando uma coluna nova sinalizando “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]

-- SELECT  IdCliente, 
--         QtdePontos,
--         QtdePontos >= 500 AS alto,
--         QtdePontos > 10 AND QtdePontos < 500 AS medio,
--         QtdePontos < 10 AS baixo

-- FROM transacoes


